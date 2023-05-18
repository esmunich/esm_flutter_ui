import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    surface: Colors.white,
    onSurface: Color(0xff3454a3),
    primary: Color(0xff3454a3),
    onPrimary: Color.fromARGB(255, 31, 54, 115),
    secondary: Color(0xff546c84),
    onSecondary: Color(0xff546c84),
    error: Color.fromARGB(255, 209, 84, 92),
    onError: Colors.white,
    background: Color(0xff3454a3),
    onBackground: Color(0xff3454a3),
  ),
  canvasColor: const Color.fromARGB(255, 246, 246, 246),
  cardColor: const Color.fromARGB(255, 255, 255, 255),
);

TextTheme lightTextTheme = TextTheme(
  displaySmall: GoogleFonts.urbanist(
      color: lightTheme.colorScheme.surface, fontWeight: FontWeight.bold),
  titleLarge: GoogleFonts.urbanist(
      color: lightTheme.colorScheme.primary,
      fontWeight: FontWeight.bold,
      fontSize: 25),
  titleSmall: GoogleFonts.urbanist(
      color: lightTheme.colorScheme.primary,
      fontWeight: FontWeight.bold,
      fontSize: 17),
);
