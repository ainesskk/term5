using Lab3;

public class TestDriver: Tester
{
    StringChanger example;
    public void ChangeStringTester()
    {
        example = new StringChanger();
        Run();
    }
    private void Run()
    {
        ChangeStringTest1();
    }
    private void ChangeStringTest1()
    {
        string[] tests = {"a", "?", "abcde", "?ab23ef", "1bc?defg", "123bcdefg?", "??ab???c1d???"};
        string[] testsExpected = {"a", "&", "abcde", "&ab23ef", "1bc&defg", "123bcdefg&", " &&ab&&&c1d&&&"};
        for(int i = 0; i <= 6; i++)
        {
            Console.WriteLine("Input: " + tests[i] + " Expected: " + testsExpected[i] + " Actual: " + example.ChangeSymbols(tests[i]));
            LogMessage("Input: " + tests[i] + " Expected: " + testsExpected[i] + " Actual: " + example.ChangeSymbols(tests[i]));
        }
    }
    static void Main()
    {
        TestDriver stringTester = new TestDriver();
        stringTester.ChangeStringTester();
        Log.Close();
    }

}