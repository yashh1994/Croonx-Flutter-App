import 'package:flutter/material.dart';
import 'package:the_conxn_project_flutter/Buddy%20System/BuddySystem.dart';
import 'package:the_conxn_project_flutter/Mentoring/Mentoring.dart';
import 'package:the_conxn_project_flutter/Theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = false;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: lightTheme,
      home: Buddysystem()
    );
  }
}

