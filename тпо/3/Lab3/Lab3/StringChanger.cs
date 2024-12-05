namespace Lab3;

public class StringChanger
{
    public string ChangeSymbols(string str)
    {
        Thread.Sleep(50);
        if (str == null) throw new ArgumentNullException(nameof(str));
        return str.Replace('?', '&');
    }
    
}