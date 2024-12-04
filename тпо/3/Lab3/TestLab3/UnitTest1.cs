using Lab3;

namespace TestLab3;

public class ChangerUnitTest
{
    [Fact]
    public void Test1()
    {
        // Arrange
        var stringChanger = new StringChanger();
        var input = "a";
        var expected = "a";

        // Act
        var result = stringChanger.ChangeSymbols(input);

        // Assert
        Assert.Equal(expected, result);
    }
    
    [Fact]
    public void Test2()
    {
        // Arrange
        var stringChanger = new StringChanger();
        var input = "?";
        var expected = "&";

        // Act
        var result = stringChanger.ChangeSymbols(input);

        // Assert
        Assert.Equal(expected, result);
    }
    
    [Fact]
    public void Test3()
    {
        // Arrange
        var stringChanger = new StringChanger();
        var input = "abcde";
        var expected = "abcde";

        // Act
        var result = stringChanger.ChangeSymbols(input);

        // Assert
        Assert.Equal(expected, result);
    }
    
    [Fact]
    public void Test4()
    {
        // Arrange
        var stringChanger = new StringChanger();
        var input = "?ab23ef";
        var expected = "&ab23ef";

        // Act
        var result = stringChanger.ChangeSymbols(input);

        // Assert
        Assert.Equal(expected, result);
    }
    
    [Fact]
    public void Test5()
    {
        // Arrange
        var stringChanger = new StringChanger();
        var input = "1bc?defg";
        var expected = "1bc&defg";

        // Act
        var result = stringChanger.ChangeSymbols(input);

        // Assert
        Assert.Equal(expected, result);
    }
    
    [Fact]
    public void Test6()
    {
        // Arrange
        var stringChanger = new StringChanger();
        var input = "123bcdefg?";
        var expected = "123bcdefg&";

        // Act
        var result = stringChanger.ChangeSymbols(input);

        // Assert
        Assert.Equal(expected, result);
    }
    
    [Fact]
    public void Test7()
    {
        // Arrange
        var stringChanger = new StringChanger();
        var input = "??ab???c1d???";
        var expected = "&&ab&&&c1d&&&";

        // Act
        var result = stringChanger.ChangeSymbols(input);

        // Assert
        Assert.Equal(expected, result);
    }
}