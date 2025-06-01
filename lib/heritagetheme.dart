import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
final ThemeData blendedTheme = ThemeData(
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF7B3F00), // Heritage Maroon
    onPrimary: Colors.white,
    secondary: Color(0xFF0FA4AF), // Modern Bright Teal
    onSecondary: Colors.black,
    error: Color(0xFF964734), // Rust tone from tech palette
    onError: Colors.white,
    background: Color(0xFFF5F5DC), // Cream (Heritage)
    onBackground: Colors.black,
    surface: Color(0xFF024950), // Deep Cyan (Tech)
    onSurface: Colors.white,
  ),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.lora(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Color(0xFF7B3F00),
    ),
    bodyMedium: GoogleFonts.ebGaramond(
      fontSize: 16,
      color: Colors.black87,
    ),
    labelLarge: GoogleFonts.montserrat(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 82, 89, 90),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  ),
  cardTheme: CardTheme(
  color: Colors.grey.shade700, // Dark mountain blue
  shadowColor: Color(0xFF003135), // Deeper teal for shadows
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
    side: BorderSide(
      color: Color.fromARGB(255, 125, 128, 128), // Accent border (bright teal)
      width: 1.5,
    ),
  ),
),

);
