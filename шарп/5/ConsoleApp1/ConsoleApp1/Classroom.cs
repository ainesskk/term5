using System;

public class Classroom : IClassroom
{
    public int RoomNumber { get; set; }
    public int TotalSeats { get; set; }
    public int AvailableSeats { get; set; }
    public bool IsOccupied { get; set; }

    public Classroom(int roomNumber, int totalSeats)
    {
        RoomNumber = roomNumber;
        TotalSeats = totalSeats;
        AvailableSeats = totalSeats;
        IsOccupied = false;
    }

    public void OccupyClassroom(int seats)
    {
        if (seats <= AvailableSeats)
        {
            AvailableSeats -= seats;
            if (AvailableSeats == 0) IsOccupied = true;
            Console.WriteLine($"{seats} мест занято. Остается {AvailableSeats} свободных мест в аудитории {RoomNumber}");
        }
        else
        {
            Console.WriteLine($"Недостаточно свободных мест в аудитории {RoomNumber}. Осталось только {AvailableSeats} мест.");
        }
    }

    public void FreeClassroom(int seats)
    {
        if (AvailableSeats + seats <= TotalSeats)
        {
            AvailableSeats += seats;
            if (AvailableSeats == TotalSeats) IsOccupied = false;
            Console.WriteLine($"{seats} мест освобождено. Остается {AvailableSeats} свободных мест в аудитории {RoomNumber}");
        }
        else
        {
            Console.WriteLine($"Нельзя освободить {seats} мест в аудитории {RoomNumber}. Всего мест: {TotalSeats}");
        }
    }
}