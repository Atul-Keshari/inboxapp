class InboxCate {
  String name;
  bool isColor;

  InboxCate({required this.isColor, required this.name});
}

List<InboxCate> inboxcate = [
  InboxCate(name: "Primary", isColor: true),
  InboxCate(name: "Social", isColor: false),
  InboxCate(name: "Promo", isColor: false),
];
