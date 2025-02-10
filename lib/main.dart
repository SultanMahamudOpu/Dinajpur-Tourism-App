import 'package:flutter/material.dart';
import 'package:dinajpur_tourist_app/login_page.dart';
import 'app_styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

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
      home: LoginPage(toggleDarkMode: toggleDarkMode), // Pass the toggleDarkMode function to LoginPage
    );
  }
}
