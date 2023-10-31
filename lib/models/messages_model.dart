import './user_model.dart';

class Message {
  final User? sender;
  final String? avatar;
  final String? time;
  final int? unreadCount;
  final bool? isRead;
  final String? text;

  Message({
    this.sender,
    this.avatar,
    this.time,
    this.unreadCount,
    this.text,
    this.isRead,
  });
}

final List<Message> recentChats = [
  Message(
    sender: CoolChat,
    avatar: 'assets/images/unnamed.png',
    time: '01:25',
    text: "How can i hellp you ☺️ ?",
    unreadCount: 1,
  ),
  Message(
    sender: jason,
    avatar: 'assets/images/Avatar-Profile-Vector-PNG-Cutout.png',
    time: '12:46',
    text: "Let me see what I can do.",
    unreadCount: 1,
  ),
  Message(
    sender: James,
    avatar: 'assets/images/images.png',
    time: '05:26',
    text: "Thanks for denner",
    unreadCount: 3,
  ),
  Message(
      sender: Mat,
      avatar: 'assets/images/4511668.png',
      time: '12:45',
      text: "Where're You ?",
      unreadCount: 2),
];

final List<Message> allChats = [
  Message(
    sender: virgil,
    avatar: 'assets/images/Virgil.jpg',
    time: '12:59',
    text: "No! I just wanted",
    unreadCount: 0,
    isRead: true,
  ),
  Message(
    sender: stanley,
    avatar: 'assets/images/Stanley.jpg',
    time: '10:41',
    text: "You did what?",
    unreadCount: 1,
    isRead: false,
  ),
  Message(
    sender: leslie,
    avatar: 'assets/images/Leslie.jpg',
    time: '05:51',
    unreadCount: 0,
    isRead: true,
    text: "just signed up for a tutor",
  ),
  Message(
    sender: judd,
    avatar: 'assets/images/Judd.jpg',
    time: '10:16',
    text: "May I ask you something?",
    unreadCount: 2,
    isRead: false,
  ),
];

final List<Message> messages = [
  Message(
    sender: CoolChat,
    time: '12:09 AM',
    avatar: CoolChat.avatar,
    text: "...",
  ),
  Message(
    sender: currentUser,
    time: '12:05 AM',
    isRead: true,
    text: "I’m going home.",
  ),
  Message(
    sender: currentUser,
    time: '12:05 AM',
    isRead: true,
    text: "See, I was right, this doesn’t interest me.",
  ),
  Message(
    sender: CoolChat,
    time: '11:58 PM',
    avatar: CoolChat.avatar,
    text: "I sign your paychecks.",
  ),
  Message(
    sender: CoolChat,
    time: '11:58 PM',
    avatar: CoolChat.avatar,
    text: "You think we have nothing to talk about?",
  ),
  Message(
    sender: currentUser,
    time: '11:45 PM',
    isRead: true,
    text:
        "Well, because I had no intention of being in your office. 20 minutes ago",
  ),
  Message(
    sender: CoolChat,
    time: '11:30 PM',
    avatar: CoolChat.avatar,
    text: "I was expecting you in my office 20 minutes ago.",
  ),
];
