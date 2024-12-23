public interface IClassroom
{
    int RoomNumber { get; set; }
    int TotalSeats { get; set; }
    int AvailableSeats { get; set; }
    void OccupyClassroom(int seats);
    void FreeClassroom(int seats);
}