using System;
using System.Collections.Immutable;
using System.Text;

namespace Laba4
{
    public class BuilderTester
    {
        private static StreamWriter _log = new StreamWriter("C:\\term5\\тпо\\5\\log.log");
        private static ChangerBuilder builder;

        private void Init()
        {
            _log.WriteLine("Инициализация ChangeBuilder");
            Console.WriteLine("Инициализация ChangeBuilder");
            builder = new ChangerBuilder();
            _log.WriteLine("ChangerBuilder создан");
            Console.WriteLine("Инициализация ChangeBuilder");
        }
        
        private void ChangerBuilderTest()
        {
            Init();

            if(builder != null)
            {
                _log.WriteLine("ChangerBuilder не равен null");
                Console.WriteLine("ChangerBuilder не равен null");
            }
            else
            {
                _log.WriteLine("ChangerBuilder равен null");
                Console.WriteLine("Тип созданного объекта - " + builder.GetType().Name);
            }

            if(builder.GetType().Name == "ChangerBuilder")
            {
                _log.WriteLine("Тип созданного объекта - ChangerBuilder");
                Console.WriteLine("Тип созданного объекта - ChangerBuilder");
            }
            else
            {
                _log.WriteLine("Тип созданного объекта - " + builder.GetType().Name);
                Console.WriteLine("Тип созданного объекта - " + builder.GetType().Name);
            }
            
            _log.Close();
        }

        public void Run()
        {
            ChangerBuilderTest();
        }
    }
}