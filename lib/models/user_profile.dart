class UserProfile {
  final String id;
  final String username;
  final String? avatarUrl;
  final String? fcmToken;
  final DateTime updatedAt;
  final bool isOnline;

  UserProfile({
    required this.id,
    required this.username,
    this.avatarUrl,
    this.fcmToken,
    required this.updatedAt,
    required this.isOnline,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'] as String,
      username: json['username'] as String,
      avatarUrl: json['avatar_url'] as String?,
      fcmToken: json['fcm_token'] as String?,
      updatedAt: DateTime.parse(json['updated_at'] as String),
      isOnline: json['is_online'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'avatar_url': avatarUrl,
      'fcm_token': fcmToken,
      'updated_at': updatedAt.toIso8601String(),
      'is_online': isOnline,
    };
  }
}