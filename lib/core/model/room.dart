class Room {
  late String roomNo;
  late String floor;
  late String suit;
  late List<String> roomMates;

  Room(
      {required this.roomNo,
      required this.floor,
      required this.suit,
      required this.roomMates});

  Room.fromJson(Map<String, dynamic> json) {
    roomNo = json['rom'].toString();
    floor = json['floor'];
    suit = json['suit'];
    roomMates =  List<String>.from(json['name']);
  }
}
