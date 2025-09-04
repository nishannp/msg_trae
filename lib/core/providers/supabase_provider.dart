import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepal_connect/core/services/supabase_service.dart';

final supabaseServiceProvider = Provider<SupabaseService>((ref) {
  return SupabaseService();
});