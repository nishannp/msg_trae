class Message {
  final String id;
  final String roomId;
  final String userId;
  final String content;
  final DateTime createdAt;
  final List<String>? readBy;

  Message({
    required this.id,
    required this.roomId,
    required this.userId,
    required this.content,
    required this.createdAt,
    this.readBy,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    List<String>? readByList;
    if (json['read_by'] != null) {
      readByList = List<String>.from(json['read_by']);
    }

    return Message(
      id: json['id'] as String,
      roomId: json['room_id'] as String,
      userId: json['user_id'] as String,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      readBy: readByList,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'room_id': roomId,
      'user_id': userId,
      'content': content,
      'created_at': createdAt.toIso8601String(),
      'read_by': readBy,
    };
  }
}