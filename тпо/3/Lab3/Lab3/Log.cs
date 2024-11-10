namespace Lab3;

public class Log
{
    private static StreamWriter _log = new StreamWriter("log.log");
    public static void Add(string msg)
    {
        _log.WriteLine(msg);
    }
    public static void Close()
    {
        _log.Close();
    }
}