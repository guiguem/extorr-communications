using System;

class Provider
{
  string SelectArgument(string[] args)
  {
    if (args.Length < 1 )
    {
      Console.WriteLine ("fatal: Not enough arguments");
      System.Environment.Exit(1);
    }
    else
    {
      Console.WriteLine("info: Will send {0}",args[0]);
    }
    if (args.Length > 1 )
    {
      string text = "info: Will ignore following arguments:";
      for (int i=1; i<args.Length; i = i + 1)
      {
        text = text + " " + args[i];
      }
      Console.WriteLine(text);
    }
    return args[0];
  }
  static public void Main (string[] args)
      {
          Console.WriteLine ("info: Hello Mono World");
          Provider provider = new Provider();
          string command = provider.SelectArgument(args);
      }
}
