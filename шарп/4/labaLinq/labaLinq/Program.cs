namespace labaLinq;

public class Program
{
    static void Main(string[] args)
    {
        var group1 = new List<Student>
        {
            new Student { Name = "Alex", ID = 1 },
            new Student { Name = "Maria", ID = 2 },
            new Student { Name = "John", ID = 3 }
        };

        var group2 = new List<Student>
        {
            new Student { Name = "Sasha", ID = 4 },
            new Student { Name = "Lena", ID = 5 },
            new Student { Name = "Peter", ID = 6 }
        };

        var combinedGroup = group1.Concat(group2).ToList();

        var combinedGroup2 = (from student in group1 select student)
            .Concat(from student in group2 select student)
            .ToList();


        Console.WriteLine("Combined Group: ");
        foreach (var student in combinedGroup)
        {
            Console.WriteLine($"{student.Name}, {student.ID}");

        }
        
        Console.WriteLine("Combined Group 2: ");
        foreach (var student in combinedGroup2)
        {
            Console.WriteLine($"{student.Name}, {student.ID}");

        }
    }
}