import 'package:flutter/material.dart';

class NexusTheme {
  static const Color background = Color(0xFF0B0E1B);
  static const Color cardBg = Color(0x1AFFFFFF);
  static const Color neonPurple = Color(0xFF8A5CF6);
  static const Color neonCyan = Color(0xFF06B6D4);
  static const Color borderGlow = Color(0x408A5CF6);

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: background,
    fontFamily: 'Inter',
    colorScheme: const ColorScheme.dark(
      primary: neonPurple,
      secondary: neonCyan,
      surface: background,
    ),
  );
}
