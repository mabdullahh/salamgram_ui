class ChatTileModel {
  final String imagePath;
  final String name;
  final String recent_message;
  final String time;
  bool hasSent = false;
  bool hasRecieved = false;
  bool hadRead = false;
  bool timeOut = false;

  ChatTileModel(
      {required this.imagePath,
      required this.name,
      required this.recent_message,
      required this.time,this.hasSent=false,this.hadRead=false,this.hasRecieved=false,this.timeOut=false});
}
