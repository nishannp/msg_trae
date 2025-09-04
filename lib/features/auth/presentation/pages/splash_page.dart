import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepal_connect/core/providers/auth_provider.dart';
import 'package:nepal_connect/core/routes/app_routes.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigate();
  }

  _navigate() async {
    await Future.delayed(const Duration(seconds: 2));
    
    final authState = ref.read(authStateProvider);
    if (authState.user != null) {
      if (mounted) {
        Navigator.pushReplacementNamed(context, AppRoutes.chatList);
      }
    } else {
      if (mounted) {
        Navigator.pushReplacementNamed(context, AppRoutes.login);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.chat_bubble_outline,
              size: 100,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 20),
            const Text(
              'NepalConnect',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Connecting hearts across Nepal',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 50),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}