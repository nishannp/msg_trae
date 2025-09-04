import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepal_connect/core/providers/auth_provider.dart';
import 'package:nepal_connect/core/routes/app_routes.dart';
import 'package:nepal_connect/features/chat/presentation/widgets/chat_list_item.dart';

class ChatListPage extends ConsumerWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
        actions: [
          IconButton(
            onPressed: () {
              // TODO: Implement new chat functionality
            },
            icon: const Icon(Icons.chat),
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () {
                  // TODO: Implement profile functionality
                },
                child: const Text('Profile'),
              ),
              PopupMenuItem(
                onTap: () {
                  ref.read(authStateProvider.notifier).signOut();
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRoutes.login,
                    (route) => false,
                  );
                },
                child: const Text('Logout'),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10, // TODO: Replace with actual chat list
        itemBuilder: (context, index) {
          return const ChatListItem();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement new chat functionality
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}