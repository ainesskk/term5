using System;

public class Program
{
    public static void Main()
    {
        User user1 = new User("Алексей");
        User user2 = new User("Мария");
 
        user1.MessageReceived += DisplayMessage;
        user2.MessageReceived += DisplayMessage;
        user1.AddedToChat += DisplayMessage;
        user2.AddedToChat += DisplayMessage;
 
        user1.SendMessage(user2, "Привет, как дела?");
        user2.SendMessage(user1, "Все хорошо, спасибо!");
 
        user1.AddToChat("Беседа по проекту");
        user2.AddToChat("Беседа по проекту");
    }

    private static void DisplayMessage(string message)
    {
        Console.WriteLine(message);
    }
}