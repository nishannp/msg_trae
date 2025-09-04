class RoomParticipant {
  final String roomId;
  final String userId;
  final String? role;

  RoomParticipant({
    required this.roomId,
    required this.userId,
    this.role,
  });

  factory RoomParticipant.fromJson(Map<String, dynamic> json) {
    return RoomParticipant(
      roomId: json['room_id'] as String,
      userId: json['user_id'] as String,
      role: json['role'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'room_id': roomId,
      'user_id': userId,
      'role': role,
    };
  }
}