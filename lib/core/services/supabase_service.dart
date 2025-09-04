import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:nepal_connect/models/user_profile.dart';
import 'package:nepal_connect/models/room.dart';
import 'package:nepal_connect/models/room_participant.dart';
import 'package:nepal_connect/models/message.dart';
import 'package:nepal_connect/core/constants/app_constants.dart';

class SupabaseService {
  final SupabaseClient supabase = Supabase.instance.client;

  // Auth methods
  Future<AuthResponse> signUp(String email, String password) async {
    return await supabase.auth.signUp(
      email: email,
      password: password,
    );
  }

  Future<AuthResponse> signIn(String email, String password) async {
    return await supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {
    await supabase.auth.signOut();
  }

  // Profile methods
  Future<UserProfile?> getUserProfile(String userId) async {
    // Return a dummy profile for now
    return UserProfile(
      id: userId,
      username: 'testuser',
      updatedAt: DateTime.now(),
      isOnline: true,
    );
  }

  Future<void> createUserProfile({
    required String userId,
    required String username,
  }) async {
    // Do nothing for now
  }

  Future<void> updateUserProfile({
    required String userId,
    String? username,
    String? avatarUrl,
    String? fcmToken,
  }) async {
    // Do nothing for now
  }

  Future<void> updateOnlineStatus(String userId, bool isOnline) async {
    // Do nothing for now
  }

  // Room methods
  Future<Room> createRoom({
    required bool isGroup,
    String? groupName,
    String? groupAvatarUrl,
  }) async {
    // Return a dummy room for now
    return Room(
      id: 'dummy-room-id',
      isGroup: isGroup,
      groupName: groupName,
      groupAvatarUrl: groupAvatarUrl,
      createdAt: DateTime.now(),
    );
  }

  Future<List<Room>> getUserRooms(String userId) async {
    // Return an empty list for now
    return [];
  }

  // Room participant methods
  Future<void> addRoomParticipant({
    required String roomId,
    required String userId,
    String? role,
  }) async {
    // Do nothing for now
  }

  Future<List<UserProfile>> getRoomParticipants(String roomId) async {
    // Return an empty list for now
    return [];
  }

  // Message methods
  Future<Message> sendMessage({
    required String roomId,
    required String userId,
    required String content,
  }) async {
    // Return a dummy message for now
    return Message(
      id: 'dummy-message-id',
      roomId: roomId,
      userId: userId,
      content: content,
      createdAt: DateTime.now(),
    );
  }

  Future<List<Message>> getMessages(String roomId, {int page = 0}) async {
    // Return an empty list for now
    return [];
  }

  Future<void> markMessageAsRead(String messageId, String userId) async {
    // Do nothing for now
  }

  // Real-time subscriptions
  Stream<List<Map<String, dynamic>>> subscribeToMessages(String roomId) {
    // Return an empty stream for now
    return Stream.empty();
  }

  Stream<List<Map<String, dynamic>>> subscribeToOnlineStatus() {
    // Return an empty stream for now
    return Stream.empty();
  }

  Stream<List<Map<String, dynamic>>> subscribeToRooms(String userId) {
    // Return an empty stream for now
    return Stream.empty();
  }

  // Storage methods
  Future<String> uploadAvatar(String filePath, String fileName) async {
    // Return a dummy URL for now
    return 'https://example.com/avatar.png';
  }

  Future<String> getAvatarUrl(String fileName) async {
    // Return a dummy URL for now
    return 'https://example.com/avatar.png';
  }
}