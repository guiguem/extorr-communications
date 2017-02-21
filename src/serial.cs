using System;
using System.Collections;
using System.Collections.Generic;
using System.Windows.Forms;
using System.IO;
using System.IO.Ports;
using System.Threading;

partial class RgaWindow : Form
{

    SerialPort serial;
    byte[] inbuf = new byte[1];

    bool openSerial(String filename, int baudrate)
    {
        serial = new SerialPort(); // filename, baudrate);
        serial.BaudRate = baudrate;
        serial.DataBits = 8;
        serial.StopBits = StopBits.One;
        serial.Parity = Parity.None;
        serial.PortName = filename;
        serial.ReadBufferSize = 4096 * 8;
        serial.ReadTimeout = 1000;  // 1 sec
        serial.ReceivedBytesThreshold = 4096;  // testing
        serial.Encoding = System.Text.Encoding.GetEncoding(28591); // plain 8-bit characters

        try {
            serial.Open();
        } catch {
            MessageBox.Show(this, String.Format("Unable to open serial port: {0}", filename), "Error",
                            MessageBoxButtons.OK, MessageBoxIcon.Exclamation
                           );

            return false;
        }
        return true;
    }

    void updateBox(string name, int value)
    {
        NumBoxBase outputCtrl = findControl(name);
        if ( outputCtrl != null ){
            // thread-safe member
            outputCtrl.setValue(value);
        }
    }


    void updateBox(string name, double value)
    {
        NumBoxBase outputCtrl = findControl(name);
        if ( outputCtrl != null ){
            // thread-safe member
            outputCtrl.setValue(value);
        }
    }


    bool scanFor(string cmdline, string fieldname, out int value)
    {
        int i;
        int val = 0;
        string[] Argv = cmdline.Split(':');
        int Argc = Argv.Length;
        value = 0;

        for (i = 0; i < Argc; i++){
            if (Argv[i] == fieldname){
                if ( (i + 1) >= Argc)
                    return false;
                if (!Int32.TryParse(Argv[i + 1], out val))
                    return false;
                value = val;
                return true;
            }
        }
        return false;
    }

    int checksumForIncoming(string cmdline)
    {
        string[] Argv = cmdline.Split(':');
        int Argc = Argv.Length;
        string s = "";

        for (int i = 0; i < Argc; i++){
            if ( Argv[i] == "ck" )
                break;
            if (i != 0)
                s += ':';
            s += Argv[i];
        }
        return checksumFor(s);
    }



    void showError(string msg)
    {
        MessageBox.Show(this, msg, "Error from QP Box",
                        MessageBoxButtons.OK, MessageBoxIcon.Exclamation
                       );
    }

    Queue qpBoxLines = new Queue();

    void logToConsole(string line)
    {
        lock(qpBoxLines.SyncRoot){
            qpBoxLines.Enqueue(line);
        }
    }


    /* This takes a line of input from the QpBox and dispatches to the
     * appropriate handler, based on the command and data.
     */
    void processLine(string fromQp)
    {
        char[] eolChars = { '\n', '\r' };
        fromQp = fromQp.TrimEnd(eolChars);
        logToConsole(String.Format("(recv) {0}", fromQp) );

        string[] fields = fromQp.Split(':');

        int numFields = fields.Length;
        if (numFields < 1)
            return;

        int cksum;
        if (scanFor(fromQp, "ck", out cksum) && (cksum != checksumForIncoming(fromQp)) ){
            Console.WriteLine("incoming checksum error: {0}");
        }

        string head = fields[0];

        if ( (head == "error") && (numFields >= 2) ){
            showError(fields[1]);
        } else if ( (head == "s64") && (isSweeping == true)){
            processSweep64Line(fields[1], fields[2]);
        } else if ( (head == "s10") && (isSweeping == true) ){
            processSweep10Line(fromQp);
        } else if ( (head == "s16") && (isSweeping == true) ){
            processSweep16Line(fromQp);
        } else if ( head == "t10" ){
            processTrend10Line(fromQp);
        } else if ( head == "t16"){
            processTrend16Line(fromQp);
        } else if ( head == "t64"){
            processTrend64Line(fields[1], fields[2]);
        } else if (head == "BeginStream"){
            setupSweep(fromQp);
        } else if (head == "BeginTrend"){
            setupTrend(fromQp);
        } else if ( head == "EndStream" ){
            terminateSweep();
        } else if (head == "EndTrend"){
            terminateTrend();
        } else if ( ((head == "inf") || (head == "ok")) && (numFields >= 3) ){
            int intval;
            float floatval;
            if (Int32.TryParse(fields[2], out intval) == true)
                updateBox(fields[1], intval);
            else if (Single.TryParse(fields[2], out floatval) == true)
                updateBox(fields[1], floatval);
        } else if ( head == "inf") {
            // just ignore informational messages.  Maybe we will log
            // them later.
        } else if (head != "ok" ){
            // ignore unknown commands
            Console.WriteLine("ignoring: {0}", fromQp);
        }
    }

    bool isSweeping = false;

    enum InstrumentMode {Sweep, Trend, Unknown};
    InstrumentMode instrumentMode = InstrumentMode.Unknown;

    struct GraphPoint
    {
        public int index;
        public double x;
        public double y;
        public int trace;
        public InstrumentMode mode;
    }

    Queue<GraphPoint> graphPoints = new Queue<GraphPoint>();

    int streamLowMass, streamHighMass, streamSamplesPerAmu;
    int lastSamplesPerAmu = -1, lastHighMass = -1, lastLowMass = -1;

    bool sweepParametersChanged()
    {
        if ( (lastSamplesPerAmu != streamSamplesPerAmu) || (lastLowMass != streamLowMass) ||
                     (lastHighMass != streamHighMass)){
            lastSamplesPerAmu = streamSamplesPerAmu;
            lastHighMass = streamHighMass;
            lastLowMass = streamLowMass;
            return true;
        }
        return false;
    }


    void setupSweep(string fromQp)
    {
        if (scanFor(fromQp, "LowMass", out streamLowMass) == false)
            return;
        if (scanFor(fromQp, "HighMass", out streamHighMass) == false)
            return;
        if (scanFor(fromQp, "SamplesPerAmu", out streamSamplesPerAmu) == false)
            return;
        isSweeping = true;
    }

    void terminateSweep()
    {
        isSweeping = false;
    }

    float[] trendDomain = new float[12];
    int trendSamples = 1;

    void setupTrend(string fromQp)
    {
        int sweepnum = 0;

        if (scanFor(fromQp, "sweep", out sweepnum) == false)
            return;


        string[] fields = fromQp.Split(':');

        if (fields.Length < 3)
            return;
        if (fields[1] != "sweep")
            return;
        if (Int32.TryParse(fields[2], out sweepnum) == false)
            return;

        int samples = 0;
        for (int i = 3; (i < fields.Length) && (i < 12); i++){
            float val;
            if (Single.TryParse(fields[i], out val) == false)
                break;
            trendDomain[samples++] = val;
        }

        trendSamples = samples;
    }

    void terminateTrend()
    {
        // nothing to do
    }


    bool newDataToPlot = false;

    void enqueueDataPoint(InstrumentMode mode, int trace, int index, float x, float y)
    {
        newDataToPlot = true;
        GraphPoint g = new GraphPoint();
        g.index = index;
        g.x = x;
        g.y = y;
        g.trace = trace;
        g.mode = mode;

        graphPoints.Enqueue(g);
        newDataToPlot = true;
    }


    void enqueueDataPoint(int index, float x, float y)
    {
        // to trace zero, sweep mode
        enqueueDataPoint(InstrumentMode.Sweep, 0, index, x, y);
    }


    void emitSample(int sampleNumber, float y)
    {
        int left = (streamSamplesPerAmu - 1) / 2;  // integer round down
        float x = ((float) streamLowMass) + ((float) (sampleNumber - left)) / ((float) streamSamplesPerAmu);
        enqueueDataPoint(sampleNumber, x, y);
    }

    void processSweep64Line(string start, string fromQp)
    {
        int startSample;
        if (Int32.TryParse(start, out startSample) == false){
            // unable to parse start sample.
            return;
        }

        byte[] data;
        try {
            data = Convert.FromBase64String(fromQp);
        } catch {
            // silent return is graceful here.
            return;
        }

        if ( (data.Length % 4) != 0){
            // unexpected length in array of floats
            return;
        }
        int numfloats = data.Length / 4;
        for (int i = 0; i < numfloats; i++){
            float f = BitConverter.ToSingle(data, 4 * i);
            emitSample(startSample + i, f);
        }
    }

    static bool hexToFloat(string hexString, out float val)
    {
        int v;
        val = 0;
        try {
            v = int.Parse(hexString, System.Globalization.NumberStyles.HexNumber);
        } catch { return false; }

        byte[] r = new byte[4];
        for (int i = 0; i < 4; i++){
            r[i] = (byte) (0xff & v);
            v = v >> 8;
        }
        val =  BitConverter.ToSingle(r, 0);
        return true;
    }


    void processSweep16Line(string fromQp)
    {
        int startSample;
        string[] fields = fromQp.Split(':');

        if (fields.Length < 3)
            return;

        if (Int32.TryParse(fields[1], out startSample) == false)
            return;

        for (int i = 2; i < fields.Length; i++){
            float val;
            if (hexToFloat(fields[i], out val) == false)
                return;
            emitSample(startSample++, val);
        }
    }

    void processSweep10Line(string fromQp)
    {
        int startSample;
        string[] fields = fromQp.Split(':');

        if (fields.Length < 3)
            return;
        if (Int32.TryParse(fields[1], out startSample) == false)
            return;
        for (int i = 2; i < fields.Length; i++){
            float val;
            if (Single.TryParse(fields[i], out val) == false)
                break;
            emitSample(startSample++, val);
        }
    }


    int nextTrendSample = 0; // x-coordinate on trend plot.
    const int trendDisplaySamples = 240; // number of horizontal items to plot.

    void incrementTrendSample()
    {
        nextTrendSample = ( (nextTrendSample + 1) % trendDisplaySamples);
    }

    void processTrend10Line(string fromQp)
    {
        float current;
        int startSample;

        string[] fields = fromQp.Split(':');
        if (Int32.TryParse(fields[1], out startSample) == false)
            return;

        int nextTrendTrace = startSample % trendSamples;

        if (fields.Length < 3)
            return;
        for (int i = 2; i < fields.Length; i++){
            if (Single.TryParse(fields[i], out current) == false)
                break;

            enqueueDataPoint(InstrumentMode.Trend, nextTrendTrace,
                             nextTrendSample,
                             nextTrendSample, current);

            if ( (++nextTrendTrace % trendSamples) == 0){
                incrementTrendSample();
                nextTrendTrace = 0;
            }
        }


    }






    void processTrend16Line(string fromQp)
    {
        float current;
        int startSample;

        string[] fields = fromQp.Split(':');
        if (Int32.TryParse(fields[1], out startSample) == false)
            return;

        int nextTrendTrace = startSample % trendSamples;

        if (fields.Length < 3)
            return;
        for (int i = 2; i < fields.Length; i++){
            if (hexToFloat(fields[i], out current) == false)
                return;

            enqueueDataPoint(InstrumentMode.Trend, nextTrendTrace,
                             nextTrendSample,
                             nextTrendSample,
                             current
                            );
            if ( (++nextTrendTrace % trendSamples) == 0){
                incrementTrendSample();
                nextTrendTrace = 0;
            }

        }


    }

    void processTrend64Line(string start, string fromQp)
    {
        int startSample;
        if (Int32.TryParse(start, out startSample) == false){
            // unable to parse start sample.
            return;
        }

        int nextTrendTrace = startSample % trendSamples;

        byte[] data;
        try {
            data = Convert.FromBase64String(fromQp);
        } catch {
            // silent return is graceful here.
            return;
        }

        if ( (data.Length % 4) != 0){
            // unexpected length in array of floats
            return;
        }
        int numfloats = data.Length / 4;
        for (int i = 0; i < numfloats; i++){
            float current = BitConverter.ToSingle(data, 4 * i);

            enqueueDataPoint(InstrumentMode.Trend, nextTrendTrace,
                             nextTrendSample,
                             nextTrendSample, current);

            if ( (++nextTrendTrace % trendSamples) == 0){
                incrementTrendSample();
                nextTrendTrace = 0;
            }

        }
    }


    bool readStopRequested = false;

    void doReadLoop()
    {
        string s;

        Console.WriteLine("read loops");
        while (readStopRequested == false){
            try {
                s = serial.ReadLine();
            } catch (TimeoutException){
                continue;
            } catch {
                Console.WriteLine("serial.ReadLine() error");
                readStopRequested = true;
                continue;
            }
          processLine(s);
        }
        serial.Close();

        // now we call an eventhandler on the gui thread to
        // update the gui state to reflect the serial closure.

        if (shuttingDown == false){
            EventHandler ev = new EventHandler(onSerialThreadClose);
            BeginInvoke(ev);
        }
    }

    void onSerialThreadClose(object sender, EventArgs e)
    {
        Console.WriteLine("serial thread is shut down");
        commPortBox.Enable();
        commSpeedBox.Enable();
        commOpenCloseBtn.Text = "Open";
    }

    void stopSerialReadThread()
    {
        readStopRequested = true;
    }


    bool serialReadThread(string port, string speed)
    {
        int baudRate;
        if (Int32.TryParse(speed, out baudRate) == false){
            Console.WriteLine("cannot parse speed: {0}", speed);
        }
        if (openSerial(port, baudRate) == false)
            return false;

        Thread t = new Thread(new ThreadStart(doReadLoop));
        readStopRequested = false;
        t.Start();
        return true;
    }

    int checksumFor(string s)
    {
        int cksum = 0;
        foreach (char ch in s)
            cksum += ch;
        return cksum;
    }

    int nextTag = 0;
    bool usingTag = false;  // connected to gui checkbox
    bool usingChecksum = false;  // connected to gui checkbox

    void sendToQpBox(string cmd)
    {
        int val;

        try {
            if ( (usingTag == true) && (scanFor(cmd, "tag", out val) == false))
                cmd += String.Format(":tag:{0}", ++nextTag);
            if ( (usingChecksum == true) && (scanFor(cmd, "ck", out val) == false))
                cmd += String.Format(":ck:{0}", checksumFor(cmd) );

            logToConsole(String.Format("(send) {0}", cmd) );

            serial.Write(cmd);
            serial.Write("\n");
        } catch {
            Console.WriteLine("Could not send command to QpBox");
            tabControl.SelectTab(tabOperating);
            commPortBox.setFocus();
        }
    }



}
