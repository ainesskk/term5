using System;
namespace Taxi {
class Taxi {
    private string driver = "Иван";
    private int capacity = 21;
    private int cost = 30;

    public void outputCost()
    {
        Console.WriteLine(cost);
    }
    
    static void Main(string[] args)
    {
        Taxi taxi = new Taxi();
        taxi.outputCost();
    }
}
}