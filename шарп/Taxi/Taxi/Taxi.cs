using System;

namespace Taxi {
    class Taxi
    {
        public string driver { get; set; } = "Иван";
        
        public int capacity { get; set; } = 5;
        
        public int foil { get; set; }

        private int _passengers;
        public int passengers
        {
            get { return _passengers; }
            set
            {
                if (CheckFoil(value) == 0)
                {
                    _passengers = 0;
                }
                else
                {
                    foil -= value * 2;
                    _passengers = value;
                }
            }
        }

        private int cost { get; set; } = 300;

        public int totalCost
        {
            get
            {
                return _passengers * cost;
            }
        }
        
        public void outputCost()
        {
            Console.WriteLine("Общая цена: " + totalCost);
        }

        public int CheckFoil(int passengers)
        {
            return (passengers * 2 <= foil) ? passengers : 0;
        }
    }
}