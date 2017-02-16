using System;
using System.Windows.Forms;
using System.Drawing;
using System.IO;
using System.IO.Ports;
using System.Threading;


class FirmwareDownloader
{
    SerialPort serial;
    Stream fstream;

    public event StringEventHandler EmitMessage;
    public event EventHandler EmitFinished;

    bool cancelRequested;

    public void RequestCancel()
    {
        cancelRequested = true;
    }

    bool waitForByte(byte want)
    {
        outputString(String.Format("Waiting for byte: 0x{0:x}", want));

        for (int i = 0; i < 100; i++){
            byte b = (byte) serial.ReadByte();
            if (b == want){
                return true;
            } else {
                outputString(String.Format("discarding: {0:x}", b));
            }
        }
        outputString(String.Format("giving up"));
        return false;
    }


    void outputString(string s)
    {
        if (EmitMessage != null)
            EmitMessage(this, new StringEventArgs(s));
    }


    bool[] acksReceived = new bool[100];

    void processResponse(string s)
    {
        outputString(s);
    }

    string lastResponse = "";

    void readIncomingBytes()
    {
        int num; 

        if (cancelRequested){
            // tbd: make a custom exception for this
            throw new System.Exception("Cancel Requested");
        }

        while ( (num = serial.BytesToRead) != 0){
            for (int i = 0; i < num; i++){
                byte b = (byte) serial.ReadByte();
                if (b == '{'){
                    lastResponse = "{";
                } else if (b == '}'){
                    lastResponse += "}";
                    processResponse(lastResponse);
                } else {
                    lastResponse += (char) b;
                }
            }
        }
    }

    byte[] buf = new byte[1];

    int bytesSent = 0;

    void sendByte(byte ch)
    {
        buf[0] = (byte) ch;
        serial.Write(buf, 0, 1);
        bytesSent++;
    }

    void resetQpBox()
    {
        // enough for 1 second at 9600 baud.
        for (int i = 0; i < 1000; i++)
            sendByte(0);

    }

    const int loaderSize = 2560;

    public FirmwareDownloader(String commPort, Stream str)
    {
        fstream = str;
        serial = new SerialPort(commPort, 9600);
        serial.Open();
    }


    void doSleep(int millisecs)
    {
        Thread.Sleep(millisecs);
    }

    void doDownload()
    {
        byte[] initChunks = new byte[loaderSize];

        fstream.Read(initChunks, 0, loaderSize);

        resetQpBox();

        if (waitForByte(0xAC) == false){
            serial.Close();
            return;
        }

        outputString(String.Format("Downloading level-2 boot loader chunks..."));
        serial.Write(initChunks, 0, loaderSize);

        // We really should wait until we receive the "{Init=1}"
        // response before proceeding.  But for this quick program
        // we make do with simply waiting half a second and hoping
        // for the best.

        doSleep(500); // milliseconds;

        readIncomingBytes();
        bytesSent = 0;
        int ch;
        while ( (ch = fstream.ReadByte()) != -1){
            readIncomingBytes();
            sendByte((byte) ch);
        }
        

        // Again, we really should wait until we receive all the acks,
        // but we simulate this by just waiting a set period of time.
        doSleep(2000);

// try this
        readIncomingBytes();

        serial.Write("{Go}");

        for (int i = 0; i < 5; i++){
           readIncomingBytes();
           doSleep(1000);
        }

        int packetsSent = bytesSent / 1296;
        if ( (bytesSent % 1296) != 0)
            packetsSent++;

//      Console.WriteLine("bytesSent={0}, packetsSent={1}", bytesSent, packetsSent);
        outputString("Finished");

        serial.Close();

    }

    public void Download()
    {
        try {
            doDownload();
        } catch {
//          Console.WriteLine("exception in Download, thread exiting");
            serial.Close();
        }
        if (EmitFinished != null)
            EmitFinished(this, new EventArgs());

    }

}



class FirmwareDialog : Form
{
    Button cancel;
    Label message;
    FirmwareDownloader downloader; 
    Stream fstream;

    public void ShowMessage(object sender, StringEventArgs e)
    {
        message.Text = e.StringValue;
    }

    public void onDownloadFinished(object sender, EventArgs e)
    {
        this.Close();
    }
    
    void onCancel(object sender, EventArgs e)
    {
        downloader.RequestCancel();
    }


    void layoutForm()
    {
        Text = "Firmware Download";
        Height = 150;
        FormBorderStyle = FormBorderStyle.FixedDialog;
        ControlBox = false;

        cancel = new Button();
        cancel.Text = "Cancel";
        CancelButton = cancel;
        cancel.DialogResult = DialogResult.Cancel;
        Controls.Add(cancel);

        cancel.Click += new EventHandler(onCancel);

        int hmargin = 30;
        int vmargin = 10;

        cancel.Location = new Point(hmargin, ClientSize.Height - cancel.Height - vmargin);
        cancel.Left = ClientSize.Width - cancel.Width - hmargin;

        message = new Label();
        message.AutoSize = true;
        message.Text = "";
        message.Location = new Point(hmargin, cancel.Top / 2);
        Controls.Add(message);
    }


    public FirmwareDialog(string commPort)
    {
        layoutForm();

        fstream = System.Reflection.Assembly.GetExecutingAssembly().
                         GetManifestResourceStream("qpbox.l2");

        downloader = new FirmwareDownloader(commPort, fstream);
        Thread t = new Thread(new ThreadStart(downloader.Download));
        downloader.EmitMessage += new StringEventHandler(this.ShowMessage);
        downloader.EmitFinished += new EventHandler(this.onDownloadFinished);
        t.Start();
    }

}

