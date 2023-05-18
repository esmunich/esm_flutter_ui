import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    surface: Color.fromARGB(255, 39, 46, 63),
    onSurface: Color.fromARGB(255, 225, 225, 225),
    primary: Color.fromARGB(255, 251, 251, 251),
    onPrimary: Color.fromARGB(255, 39, 46, 63),
    secondary: Color.fromARGB(255, 255, 255, 255),
    onSecondary: Color.fromARGB(255, 48, 57, 78),
    error: Color.fromARGB(255, 209, 84, 92),
    onError: Colors.white,
    background: Color.fromARGB(255, 53, 63, 86),
    onBackground: Color.fromARGB(255, 39, 46, 63),
  ),
  canvasColor: const Color.fromARGB(255, 35, 37, 47),
  cardColor: const Color.fromARGB(255, 25, 33, 44),
);

TextTheme darkTextTheme = TextTheme(
  displaySmall: GoogleFonts.urbanist(
      color: darkTheme.colorScheme.surface, fontWeight: FontWeight.bold),
  titleLarge: GoogleFonts.urbanist(
      color: darkTheme.colorScheme.primary,
      fontWeight: FontWeight.bold,
      fontSize: 25),
  titleSmall: GoogleFonts.urbanist(
      color: darkTheme.colorScheme.primary,
      fontWeight: FontWeight.bold,
      fontSize: 17),
);
