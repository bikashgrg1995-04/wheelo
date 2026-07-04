import 'package:flutter/material.dart';

/// Wheelo brand palette — navy base with a teal accent.
class AppColors {
  AppColors._();

  static const Color navyDark = Color(0xFF0B1A2A);
  static const Color navy = Color(0xFF12263D);
  static const Color navySurface = Color(0xFF1A324D);
  static const Color navyBorder = Color(0xFF27415E);

  static const Color teal = Color(0xFF2DD4BF);
  static const Color tealDark = Color(0xFF14B8A6);

  static const Color textPrimary = Color(0xFFEAF1F6);
  static const Color textMuted = Color(0xFF8FA3B8);

  static const Color error = Color(0xFFEF5350);
  static const Color success = Color(0xFF4ADE80);

  static const LinearGradient splashGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [navyDark, navy],
  );

  // Light theme
  static const Color background = Color(0xFFF8FAFC);
  static const Color textDark = Color(0xFF0F172A);
  static const Color lightBorder = Color(0xFFE2E8F0);
}
