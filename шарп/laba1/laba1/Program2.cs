/*2)Ввести текст с клавиатуры. Заменить 1-ую букву в каждом слове на 
@. Результат вывести на экран.
 */

namespace laba1;

public class Program2
{
    public static void ChangeLetter()
    {
        Console.WriteLine();
        Console.WriteLine("Введите строку: ");
        string str = new string(Console.ReadLine());
        char[] arr = str.ToCharArray();
        for (int i = 0; i < str.Length-1; i++)
        {
            if (arr[i]==' ')
            {
                arr[i+1]='@';
            }
        }

        arr[0] = '@';
        str = new string(arr);
        Console.WriteLine(str);
    }
}