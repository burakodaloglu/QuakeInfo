import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static ThemeData lightTheme() {
    final colorScheme = ColorScheme.light(
      primary: const Color(0xFFC62828),
      secondary: const Color(0xFFFF6F00),
      tertiary: const Color(0xFF4A148C),
      surface: Colors.grey.shade50,
      background: Colors.white,
      error: const Color(0xFFB71C1C),
      onPrimary: Colors.white,
      onSecondary: Colors.black87,
      onSurface: Colors.black87, // Eklendi
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.background,
      textTheme: GoogleFonts.rubikTextTheme().copyWith(
        titleLarge: GoogleFonts.rubik(
          color: colorScheme.primary,
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onSurface, // Düzeltildi
          height: 1.5,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface, // Düzeltildi
        elevation: 1,
        titleTextStyle: GoogleFonts.rubik(
          color: colorScheme.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        iconTheme: IconThemeData(
          color: colorScheme.primary,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary, // Düzeltildi
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: GoogleFonts.rubik(
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
      cardTheme: CardTheme(
        color: colorScheme.surface, // Düzeltildi
        elevation: 2,
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: colorScheme.outline.withOpacity(0.2), // Düzeltildi
            width: 1,
          ),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: colorScheme.outline.withOpacity(0.3), // Düzeltildi
        thickness: 0.8,
        space: 24,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorScheme.primary,
          textStyle: GoogleFonts.rubik(fontWeight: FontWeight.w500),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: colorScheme.primary,
        ),
      ),

    );
  }

  static ThemeData darkTheme() {
    final colorScheme = ColorScheme.dark(
      primary: const Color(0xFFEF5350),
      secondary: const Color(0xFFFFA726),
      tertiary: const Color(0xFF9575CD),
      surface: const Color(0xFF1E1E1E),
      background: const Color(0xFF121212),
      error: const Color(0xFFE57373),
      onPrimary: Colors.black87,
      onSecondary: Colors.white,
      onSurface: Colors.white, // Eklendi
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.background,
      textTheme: GoogleFonts.rubikTextTheme().copyWith(
        titleLarge: GoogleFonts.rubik(
          color: colorScheme.primary,
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onSurface, // Düzeltildi
          height: 1.5,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
        elevation: 1,
        titleTextStyle: GoogleFonts.rubik(
          color: colorScheme.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        iconTheme: IconThemeData(
          color: colorScheme.primary,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary, // Düzeltildi
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: GoogleFonts.rubik(
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
      cardTheme: CardTheme(
        color: colorScheme.surface,
        elevation: 4,
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: colorScheme.outline.withOpacity(0.4), // Düzeltildi
            width: 1,
          ),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: colorScheme.outline.withOpacity(0.6), // Düzeltildi
        thickness: 0.8,
        space: 24,
      ),
    );
  }
}