import 'package:flutter/material.dart';
import 'package:dinajpur_tourist_app/supabase/supabase_helper.dart';

import 'authentication/login_page.dart';
import 'style/app_styles.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SupabaseHelper.init(); // Initialize Supabase
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;
  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    _checkAuth();
  }

  void _checkAuth() async {
    final user = SupabaseHelper.getCurrentUser();
    setState(() {
      _isLoggedIn = user != null;
    });
  }

  // Function to toggle the dark mode state
  void toggleDarkMode() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dinajpur Tourism',
      theme: _isDarkMode ? AppStyles.darkTheme : AppStyles.lightTheme,
      home: _isLoggedIn ? HomeScreen(toggleDarkMode: toggleDarkMode) : LoginPage(toggleDarkMode: toggleDarkMode),
    );
  }
}
