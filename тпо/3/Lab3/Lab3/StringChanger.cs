namespace Lab3;

public class StringChanger
{
    public string ChangeSymbols(string str)
    {
        if (str == null) throw new ArgumentNullException(nameof(str));
        return str.Replace('?', '&');
    }
    
}