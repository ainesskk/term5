public class Message
{
    public User Sender { get; set; }
    public User Recipient { get; set; }
    public string Content { get; set; }

    public Message(User sender, User recipient, string content)
    {
        Sender = sender;
        Recipient = recipient;
        Content = content;
    }
}