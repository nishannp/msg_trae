import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:nepal_connect/core/constants/app_constants.dart';
import 'package:nepal_connect/core/routes/app_routes.dart';
import 'package:nepal_connect/core/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Supabase
  if (AppConstants.supabaseUrl != 'https://dqbksvdisdwmfwuvmsdl.supabase.co' &&
      AppConstants.supabaseAnonKey !=
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRxYmtzdmRpc2R3bWZ3dXZtc2RsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTcwMDAzNjksImV4cCI6MjA3MjU3NjM2OX0.6mcjoWHElffo9Q2MZDxi2qraHlO64VGCFDIovWVmI38') {
    await Supabase.initialize(
      url: AppConstants.supabaseUrl,
      anonKey: AppConstants.supabaseAnonKey,
    );
  } else {
    // Show a warning or handle the missing credentials
    print(
      'WARNING: Supabase credentials not provided. '
      'Please provide SUPABASE_URL and SUPABASE_ANON_KEY environment variables.',
    );
  }

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NepalConnect',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
