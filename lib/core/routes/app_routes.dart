import 'package:flutter/material.dart';
import 'package:nepal_connect/features/auth/presentation/pages/login_page.dart';
import 'package:nepal_connect/features/auth/presentation/pages/signup_page.dart';
import 'package:nepal_connect/features/auth/presentation/pages/splash_page.dart';
import 'package:nepal_connect/features/chat/presentation/pages/chat_list_page.dart';
import 'package:nepal_connect/features/chat/presentation/pages/chat_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String chatList = '/chat-list';
  static const String chat = '/chat';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case signup:
        return MaterialPageRoute(builder: (_) => const SignupPage());
      case chatList:
        return MaterialPageRoute(builder: (_) => const ChatListPage());
      case chat:
        final args = settings.arguments as Map<String, dynamic>?;
        return MaterialPageRoute(
          builder: (_) => ChatScreen(
            roomId: args?['roomId'] as String? ?? '',
            isGroup: args?['isGroup'] as bool? ?? false,
            title: args?['title'] as String? ?? '',
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}