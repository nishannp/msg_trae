class AppConstants {
  // Supabase configuration
  static const String supabaseUrl = String.fromEnvironment(
    'https://dqbksvdisdwmfwuvmsdl.supabase.co',
    defaultValue: 'https://dqbksvdisdwmfwuvmsdl.supabase.co',
  );
  static const String supabaseAnonKey = String.fromEnvironment(
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRxYmtzdmRpc2R3bWZ3dXZtc2RsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTcwMDAzNjksImV4cCI6MjA3MjU3NjM2OX0.6mcjoWHElffo9Q2MZDxi2qraHlO64VGCFDIovWVmI38',
    defaultValue:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRxYmtzdmRpc2R3bWZ3dXZtc2RsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTcwMDAzNjksImV4cCI6MjA3MjU3NjM2OX0.6mcjoWHElffo9Q2MZDxi2qraHlO64VGCFDIovWVmI38',
  );

  // App configuration
  static const String appName = 'NepalConnect';
  static const int paginationLimit = 20;

  // Storage
  static const String avatarBucket = 'avatars';
}
