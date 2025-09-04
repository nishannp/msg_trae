import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepal_connect/core/providers/supabase_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final authStateProvider = StateNotifierProvider<AuthController, AuthState>((ref) {
  return AuthController(ref);
});

class AuthState {
  final User? user;
  final bool isLoading;
  final String? error;

  AuthState({
    this.user,
    this.isLoading = false,
    this.error,
  });

  AuthState copyWith({
    User? user,
    bool? isLoading,
    String? error,
  }) {
    return AuthState(
      user: user ?? this.user,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

class AuthController extends StateNotifier<AuthState> {
  final Ref ref;
  
  AuthController(this.ref) : super(AuthState()) {
    // Check initial auth state
    _checkAuthState();
  }

  void _checkAuthState() async {
    // For now, we'll just set a dummy user to test the UI
    // In a real app, we would check the actual auth state
    // final supabase = ref.read(supabaseServiceProvider);
    // final user = supabase.supabase.auth.currentUser;
    
    // For testing purposes, let's create a dummy user
    // final dummyUser = User(
    //   id: 'dummy-user-id',
    //   appMetadata: {},
    //   userMetadata: {},
    //   aud: '',
    //   createdAt: DateTime.now().toIso8601String(),
    // );
    
    // state = state.copyWith(user: dummyUser);
  }

  Future<void> signUp(String email, String password, String username) async {
    state = state.copyWith(isLoading: true, error: null);
    
    // Simulate a delay
    await Future.delayed(const Duration(seconds: 1));
    
    // For now, we'll just simulate a successful sign up
    state = state.copyWith(isLoading: false, user: null);
  }

  Future<void> signIn(String email, String password) async {
    state = state.copyWith(isLoading: true, error: null);
    
    // Simulate a delay
    await Future.delayed(const Duration(seconds: 1));
    
    // For now, we'll just simulate a successful sign in
    state = state.copyWith(isLoading: false, user: null);
  }

  Future<void> signOut() async {
    state = AuthState();
  }
}