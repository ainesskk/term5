namespace Taxi;

public class Program
{
    static void Main(string[] args)
    {
        Taxi taxi = new Taxi();
        taxi.foil = 30;
        taxi.passengers = 2;
        Console.WriteLine("Всего пассажиров: " + taxi.passengers);
        taxi.outputCost();

        Taxi taxi1 = new Taxi();
        taxi1.foil = 1;
        taxi1.passengers = 1;
        Console.WriteLine("\nВсего пассажиров: " + taxi1.passengers);
        taxi1.outputCost();
    }
}