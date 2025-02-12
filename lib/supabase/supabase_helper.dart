import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseHelper {
  static SupabaseClient? _client;

  // Initialize the Supabase client
  static Future<void> init() async {
    await Supabase.initialize(
      url: 'https://qmqpngytufmflurdceqx.supabase.co', // Replace with your Supabase URL
      anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFtcXBuZ3l0dWZtZmx1cmRjZXF4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzkzNjYwNjgsImV4cCI6MjA1NDk0MjA2OH0.JfCXgWmvLvLms0mbK2YywK63zoXQOaeqWWyLtl-_XCo', // Replace with your Supabase anon key
    );
    _client = Supabase.instance.client;
  }

  static SupabaseClient get client {
    if (_client == null) {
      throw Exception('Supabase client not initialized');
    }
    return _client!;
  }

  // Sign up a user
  static Future<String?> signUp(String email, String password) async {
    final response = await client.auth.signUp(
        email: email,
        password: password,
    );

    if (response.error != null) {
      return response.error!.message; // Return the error message if exists
    }
    return null; // If no error, return null (sign-up successful)
  }

  // Sign in a user
  static Future<String?> signIn(String email, String password) async {
    final response = await client.auth.signInWithPassword(
      email: email,
      password: password,
    );

    if (response.error != null) {
      return response.error!.message; // Return the error message if exists
    }
    return null; // If no error, return null (sign-in successful)
  }

  // Sign out the current user
  static Future<void> signOut() async {
    await client.auth.signOut();
  }

  // Get current authenticated user
  static User? getCurrentUser() {
    return client.auth.currentUser;
  }
}

extension on AuthResponse {
  get error => null;
}
