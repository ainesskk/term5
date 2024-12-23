using System;

public class Program
{
    public static void Main()
    {
        Classroom classroom1 = new Classroom(101, 30);
        Classroom classroom2 = new Classroom(102, 25);

        Console.WriteLine($"Аудитория {classroom1.RoomNumber}: всего мест = {classroom1.TotalSeats}, свободных мест = {classroom1.AvailableSeats}, занято = {classroom1.IsOccupied}");
        Console.WriteLine($"Аудитория {classroom2.RoomNumber}: всего мест = {classroom2.TotalSeats}, свободных мест = {classroom2.AvailableSeats}, занято = {classroom2.IsOccupied}");

        classroom1.OccupyClassroom(10);
        classroom2.OccupyClassroom(5);

        classroom1.FreeClassroom(5);
        classroom2.FreeClassroom(3);
    }
}