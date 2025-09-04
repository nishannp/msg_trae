import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepal_connect/models/message.dart' as app_message;

class ChatScreen extends ConsumerStatefulWidget {
  final String roomId;
  final bool isGroup;
  final String title;

  const ChatScreen({
    super.key,
    required this.roomId,
    required this.isGroup,
    required this.title,
  });

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  List<app_message.Message> _messages = [];

  @override
  void initState() {
    super.initState();
    // TODO: Load messages from Supabase
    _loadMessages();
  }

  _loadMessages() async {
    // TODO: Implement actual message loading
    // For now, we'll add some dummy messages
    setState(() {
      _messages = [
        app_message.Message(
          id: '1',
          roomId: widget.roomId,
          userId: 'user1',
          content: 'Hello there!',
          createdAt: DateTime.now().subtract(const Duration(minutes: 5)),
        ),
        app_message.Message(
          id: '2',
          roomId: widget.roomId,
          userId: 'user2',
          content: 'Hi! How are you doing?',
          createdAt: DateTime.now().subtract(const Duration(minutes: 4)),
        ),
        app_message.Message(
          id: '3',
          roomId: widget.roomId,
          userId: 'user1',
          content: 'I am doing great! Just working on this chat app.',
          createdAt: DateTime.now().subtract(const Duration(minutes: 3)),
        ),
      ];
    });
  }

  _sendMessage(types.PartialText message) async {
    // TODO: Implement actual message sending
    final newMessage = app_message.Message(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      roomId: widget.roomId,
      userId: 'currentUser', // TODO: Replace with actual user ID
      content: message.text,
      createdAt: DateTime.now(),
    );

    setState(() {
      _messages.add(newMessage);
    });

    // TODO: Send message to Supabase
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              // TODO: Implement chat info functionality
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: Chat(
        messages: _messages
            .map(
              (msg) => types.TextMessage(
                id: msg.id,
                author: const types.User(id: 'user1'),
                createdAt: msg.createdAt.millisecondsSinceEpoch ~/ 1000,
                text: msg.content,
              ),
            )
            .toList(),
        onSendPressed: _sendMessage,
        user: const types.User(id: 'currentUser'), // TODO: Replace with actual user ID
        theme: DefaultChatTheme(
          primaryColor: Theme.of(context).colorScheme.primary,
          secondaryColor: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}