class Room {
  final String id;
  final bool isGroup;
  final String? groupName;
  final String? groupAvatarUrl;
  final DateTime createdAt;

  Room({
    required this.id,
    required this.isGroup,
    this.groupName,
    this.groupAvatarUrl,
    required this.createdAt,
  });

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      id: json['id'] as String,
      isGroup: json['is_group'] as bool? ?? false,
      groupName: json['group_name'] as String?,
      groupAvatarUrl: json['group_avatar_url'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'is_group': isGroup,
      'group_name': groupName,
      'group_avatar_url': groupAvatarUrl,
      'created_at': createdAt.toIso8601String(),
    };
  }
}