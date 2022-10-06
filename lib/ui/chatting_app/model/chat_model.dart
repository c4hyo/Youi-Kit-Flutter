class ChatRoomModel {
  String? text;
  String? createdAt;
  bool? isSender;
  ChatRoomModel({
    this.text,
    this.createdAt,
    this.isSender,
  });
}

class ChatListModel {
  String? name;
  String? chat;
  String? time;
  int? count;
  String? imageUrl;
  ChatListModel({
    this.name,
    this.chat,
    this.time,
    this.count,
    this.imageUrl,
  });
}

List<ChatListModel> chatList = [
  ChatListModel(
    chat: "How are you",
    count: 0,
    imageUrl: "assets/profile_picture/mbappe.jpg",
    name: "Mbappe",
    time: "12.50",
  ),
  ChatListModel(
    chat: "Hai,",
    count: 10,
    imageUrl: "assets/profile_picture/messi.jpg",
    name: "Messi",
    time: "12.30",
  ),
  ChatListModel(
    chat: "Croatia",
    count: 19,
    imageUrl: "assets/profile_picture/modric.jpg",
    name: "Modric",
    time: "12.15",
  ),
  ChatListModel(
    chat: "Manchester United",
    count: 7,
    imageUrl: "assets/profile_picture/ronaldo.jpg",
    name: "Ronaldo",
    time: "12.05",
  ),
  ChatListModel(
    chat: "From Norway",
    count: 9,
    imageUrl: "assets/profile_picture/haaland.jpg",
    name: "Haaland",
    time: "11.35",
  ),
];

List<ChatRoomModel> chatRoomList = [
  ChatRoomModel(
    createdAt: "12.40",
    isSender: true,
    text: "Hello, Ronaldo",
  ),
  ChatRoomModel(
    createdAt: "12.41",
    isSender: true,
    text: "How Are you",
  ),
  ChatRoomModel(
    createdAt: "12.41",
    isSender: false,
    text: "I'm fine, thanks",
  ),
];
