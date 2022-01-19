class Chat {
  final String imageUrl;
  final String name;
  final String sms;
  final String time;
  final String read;

  Chat({
    required this.imageUrl,
    required this.name,
    required this.sms,
    required this.time,
    required this.read,
  });
}

List<Chat> chatPage = [
  Chat(
      imageUrl: "assets/a.png",
      name: "Aiden Ken",
      sms: "Hey! Please make sure to check my doc",
      time: "2m ago",
      read: "Read..."),
  Chat(
      imageUrl: "assets/b.png",
      name: "Poul Phonix",
      sms: "Hello!",
      time: "5m ago",
      read: "Read..."),
  Chat(
      imageUrl: "assets/c.png",
      name: "Ricardo Jhon",
      sms: "Hey! Pal I need a favor from you",
      time: "7m ago",
      read: "Read.."),
  Chat(
      imageUrl: "assets/d.png",
      name: "Jhon Smith",
      sms: "Hey! Please make sure to check my doc",
      time: "9m ago",
      read: "Read..."),
  Chat(
      imageUrl: "assets/e.png",
      name: "Mike Jonas",
      sms: "Hey! Pal I need a favor from you",
      time: "11m ago",
      read: "Read..."),
  Chat(
      imageUrl: "assets/f.png",
      name: "Alen Walker",
      sms: "Hey! Can you check my mail",
      time: "13m ago",
      read: "Read..."),
  Chat(
      imageUrl: "assets/g.png",
      name: "Jef Ronalds",
      sms: "Hey! ",
      time: "15m ago",
      read: "Read..."),
];
