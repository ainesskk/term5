using System;
using System.Text.RegularExpressions;
using laba1;

internal class Program
{
    public static void Main(string[] args)
    {
        string pattern = "[a-z]*[0-9]*@";
        string input = "ivanov95 1995 ivanov95@site.com\npetrov2000 2000 petrov2000@site.com\nsmith2005 2005 smith2005@site.com\n";
        MatchEvaluator evaluator = new MatchEvaluator(DigitReplacer);
        string result = Regex.Replace(input, pattern, evaluator);
        Console.WriteLine(result);
    }

    public static string DigitReplacer(Match match)
    {
        return Regex.Replace(match.Value, "\\d", "X");
    }
}
