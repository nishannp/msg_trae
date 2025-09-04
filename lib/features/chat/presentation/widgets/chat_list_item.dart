import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 25,
        child: Icon(Icons.person),
      ),
      title: const Text(
        'John Doe',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: const Text('Hello there! How are you?'),
      trailing: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '10:30 AM',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          SizedBox(height: 5),
          CircleAvatar(
            radius: 10,
            backgroundColor: Colors.green,
            child: Text(
              '2',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        // TODO: Navigate to chat screen
      },
    );
  }
}