using System;
using System.Collections.Generic;

public delegate void DisplayMessage(string message);

public class User
{
    public string Name { get; set; }
    private List<Message> inbox = new List<Message>();

    public event DisplayMessage MessageReceived;
    public event DisplayMessage AddedToChat;

    public User(string name)
    {
        Name = name;
    }

    public void SendMessage(User recipient, string content)
    {
        var message = new Message(this, recipient, content);
        recipient.ReceiveMessage(message);
    }

    public void ReceiveMessage(Message message)
    {
        inbox.Add(message);
        MessageReceived?.Invoke($"Пользователь {Name} получил сообщение от {message.Sender.Name}: {message.Content}");
    }

    public void AddToChat(string chatName)
    {
        AddedToChat?.Invoke($"Пользователь {Name} добавлен в беседу \"{chatName}\"");
    }
}