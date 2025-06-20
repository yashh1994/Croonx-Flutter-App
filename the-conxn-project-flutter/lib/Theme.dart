import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData darkTheme = ThemeData(
  primaryColor: Color(0xFFD95D39),
  scaffoldBackgroundColor: Color(0xFF1F2631),
  dialogBackgroundColor: Color(0xFF484E57),
  secondaryHeaderColor: Color(0xFFFFFFFF),
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.inter(
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w600,
      fontSize: 18,
      letterSpacing: 0,
    ),
    bodyMedium: GoogleFonts.inter(
      fontSize: 18,
      color: Color(0xFFFFFFFF),
      letterSpacing: 0,
    ),
    bodySmall: GoogleFonts.inter(
      fontSize: 12,
      color: Color(0xFFFFFFFF),
      letterSpacing: 0,
    ),
  ),
  colorScheme: const ColorScheme.dark(
    primary: Colors.blue,
    secondary: Colors.blueAccent,
  ),
);

final darkDivider = Color(0xFF575C64);
final lightDivider = Color(0xFFE6E6E6);

final ThemeData lightTheme = ThemeData(
  primaryColor: Color(0xFFD95D39),
  scaffoldBackgroundColor: Color(0xFFF6F6F6),
  dialogBackgroundColor: Color(0xFFE6E6E6),
  secondaryHeaderColor: Color(0xFF30373F),
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.inter(
      color: Color(0xFF30373F),
      fontWeight: FontWeight.w600,
      fontSize: 18,
      letterSpacing: 0,
    ),
    bodyMedium: GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: Color(0xFF30373F),
      letterSpacing: 0,
    ),
    bodySmall: GoogleFonts.inter(
      fontSize: 12,
      color: Color(0xFF30373F),
      letterSpacing: 0,
    ),
  ),
  colorScheme: const ColorScheme.light(
    primary: Colors.blue,
    secondary: Colors.blueAccent,
  ),
);


final TextStyle smallPrimaryTextStyle = GoogleFonts.inter(
  fontSize: 10,
  color: Colors.white,
);

final ButtonStyle primaryFillButton = ElevatedButton.styleFrom(
  padding: const EdgeInsets.symmetric(vertical: 16),
  backgroundColor: const Color(0xFFD95D39), // orange fill
  foregroundColor: Colors.white,           // text color
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18),
  ),
  textStyle: smallPrimaryTextStyle
);

final ButtonStyle primaryNonFillButton = OutlinedButton.styleFrom(
  padding: const EdgeInsets.symmetric(vertical: 16),
  side: const BorderSide(color: Color(0xFFD95D39), width: 1),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18),
  ),
  textStyle: smallPrimaryTextStyle
);
