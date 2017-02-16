using System;
using System.IO;
using System.IO.Ports;

public delegate void StringEventHandler(object sender, StringEventArgs e);
public class StringEventArgs : EventArgs {
        public string StringValue;
        public StringEventArgs(string s){
                StringValue = s;
        }
}

static class Program
{

    static Stream fstream;

    static void printMessage(object sender, StringEventArgs e)
    {
        Console.WriteLine("{0}", e.StringValue);
    }
    
	static int Main(string[] args)
	{
        if (args.Length < 1){
            Console.WriteLine("usage: bootfirm comport [imagefile]");
            return -1;
        }
        string commPort = args[0];


        string[] ports = SerialPort.GetPortNames();
        Console.WriteLine("The following serial ports were found:");
        foreach(string port in ports)
            Console.Write("{0} ", port);
        Console.WriteLine("");

        if (args.Length == 2){
            string imageFile = args[1];
            Console.WriteLine("firmware image: {0}", imageFile);
            fstream = new FileStream(imageFile, FileMode.Open);
        } else {
            Console.WriteLine("using built-in image");
            fstream = System.Reflection.Assembly.GetExecutingAssembly().
                      GetManifestResourceStream("qpbox.l2");
        }

        
        FirmwareDownloader down = new FirmwareDownloader(commPort, fstream);
        down.EmitMessage += new StringEventHandler(printMessage);
        down.Download();


        return 0;
	}
}
