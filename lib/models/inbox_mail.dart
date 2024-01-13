class Mail {
  String title;
  String des;
  String message;
  String time;
  bool isTrue;

  Mail({
    required this.title,
    required this.isTrue,
    required this.des,
    required this.message,
    required this.time,
  });
}

List<Mail> getMail = [
  Mail(
      title: "lalit singh rajput",
      message: "Software",
      isTrue: true,
      des: "Hi, are you available for this projects?",
      time: "11:40"),
  Mail(
      title: "Atul Keshari",
      message: "Flutter Developer",
      isTrue: false,
      des: "You are invited to become a member",
      time: "Yersterday"),
];
