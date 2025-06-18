import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  primaryColor: Color(0xFFD95D39),
  scaffoldBackgroundColor: Color(0xFF1F2631),
  dialogBackgroundColor: Color(0xFF484E57),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Color(0xFFFFFFFF)),
  ),
  colorScheme: const ColorScheme.light(
    primary: Colors.blue,
    secondary: Colors.blueAccent,
  ),
);

final ThemeData lightTheme = ThemeData(
  primaryColor: Color(0xFFD95D39),
  scaffoldBackgroundColor: Color(0xFFF6F6F6),
  dialogBackgroundColor: Color(0xFFE6E6E6),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Color(0xFF30373F)),
  ),
  colorScheme: const ColorScheme.light(
    primary: Colors.blue,
    secondary: Colors.blueAccent,
  ),
);
