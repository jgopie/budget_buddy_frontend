import 'package:flutter/material.dart';

class AppTheme {
  // Your color palette
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color green = Color(0xFF5EEB5B);
  static const Color darkBlue = Color(0xFF1F7A8C);
  static const Color lightBlue = Color(0xFF009FB7);

  // Light theme
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: lightBlue,
        onPrimary: white,
        primaryContainer: lightBlue.withValues(alpha: 0.2),
        onPrimaryContainer: lightBlue.withValues(alpha: 0.8),
        secondary: darkBlue,
        onSecondary: white,
        secondaryContainer: darkBlue.withValues(alpha: 0.2),
        onSecondaryContainer: darkBlue.withValues(alpha: 0.8),
        tertiary: green,
        onTertiary: black,
        tertiaryContainer: green.withValues(alpha: 0.2),
        onTertiaryContainer: green.withValues(alpha: 0.8),
        error: Colors.red,
        onError: white,
        errorContainer: Colors.red.shade200,
        onErrorContainer: Colors.red.shade900,
        surface: white,
        onSurface: black,
        surfaceContainerHighest: Colors.grey.shade100,
        onSurfaceVariant: Colors.grey.shade700,
        outline: Colors.grey.shade400,
        shadow: Colors.black.withValues(alpha: 0.1),
        inverseSurface: black,
        onInverseSurface: white,
        inversePrimary: lightBlue.withValues(alpha: 0.8),
        surfaceTint: lightBlue.withValues(alpha: 0.05),
      ),

      // Text theme
      textTheme: TextTheme(
        displayLarge: TextStyle(color: black, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(color: black, fontWeight: FontWeight.bold),
        displaySmall: TextStyle(color: black, fontWeight: FontWeight.bold),
        headlineLarge: TextStyle(color: black, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(color: black),
        headlineSmall: TextStyle(color: black),
        titleLarge: TextStyle(color: black, fontWeight: FontWeight.w600),
        titleMedium: TextStyle(color: black, fontWeight: FontWeight.w600),
        titleSmall: TextStyle(color: black, fontWeight: FontWeight.w600),
        bodyLarge: TextStyle(color: black),
        bodyMedium: TextStyle(color: black),
        bodySmall: TextStyle(color: black.withValues(alpha: 0.8)),
        labelLarge: TextStyle(color: lightBlue, fontWeight: FontWeight.bold),
        labelMedium: TextStyle(color: lightBlue, fontWeight: FontWeight.bold),
        labelSmall: TextStyle(color: lightBlue, fontWeight: FontWeight.bold),
      ),

      // AppBar theme
      appBarTheme: AppBarTheme(
        backgroundColor: lightBlue,
        foregroundColor: white,
        elevation: 0,
      ),

      // Button themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: lightBlue,
          foregroundColor: white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: lightBlue,
          side: BorderSide(color: lightBlue),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: lightBlue,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        ),
      ),

      // Input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: lightBlue, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.red, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.red, width: 2),
        ),
        filled: true,
        fillColor: white,
      ),

      // Card theme
      cardTheme: CardTheme(
        color: white,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),

      // Divider theme
      dividerTheme: DividerThemeData(
        color: Colors.grey.shade300,
        thickness: 1,
      ),
    );
  }

  // Dark theme
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: lightBlue,
        onPrimary: white,
        primaryContainer: lightBlue.withValues(alpha: 0.3),
        onPrimaryContainer: white,
        secondary: darkBlue,
        onSecondary: white,
        secondaryContainer: darkBlue.withValues(alpha: 0.3),
        onSecondaryContainer: white,
        tertiary: green,
        onTertiary: black,
        tertiaryContainer: green.withValues(alpha: 0.3),
        onTertiaryContainer: white,
        error: Colors.red.shade300,
        onError: black,
        errorContainer: Colors.red.shade900,
        onErrorContainer: Colors.red.shade100,
        surface: Color(0xFF121212),
        onSurface: white,
        surfaceContainerHighest: Color(0xFF2C2C2C),
        onSurfaceVariant: Colors.grey.shade300,
        outline: Colors.grey.shade600,
        shadow: Colors.black,
        inverseSurface: Colors.grey.shade300,
        onInverseSurface: black,
        inversePrimary: lightBlue,
        surfaceTint: lightBlue.withValues(alpha: 0.1),
      ),

      // Text theme
      textTheme: TextTheme(
        displayLarge: TextStyle(color: white, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(color: white, fontWeight: FontWeight.bold),
        displaySmall: TextStyle(color: white, fontWeight: FontWeight.bold),
        headlineLarge: TextStyle(color: white, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(color: white),
        headlineSmall: TextStyle(color: white),
        titleLarge: TextStyle(color: white, fontWeight: FontWeight.w600),
        titleMedium: TextStyle(color: white, fontWeight: FontWeight.w600),
        titleSmall: TextStyle(color: white, fontWeight: FontWeight.w600),
        bodyLarge: TextStyle(color: white),
        bodyMedium: TextStyle(color: white),
        bodySmall: TextStyle(color: white.withValues(alpha: 0.8)),
        labelLarge: TextStyle(color: lightBlue, fontWeight: FontWeight.bold),
        labelMedium: TextStyle(color: lightBlue, fontWeight: FontWeight.bold),
        labelSmall: TextStyle(color: lightBlue, fontWeight: FontWeight.bold),
      ),

      // AppBar theme
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF121212),
        foregroundColor: white,
        elevation: 0,
      ),

      // Button themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: lightBlue,
          foregroundColor: white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: lightBlue,
          side: BorderSide(color: lightBlue),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: lightBlue,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        ),
      ),

      // Input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade700),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: lightBlue, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade700),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.red.shade300, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.red.shade300, width: 2),
        ),
        filled: true,
        fillColor: Color(0xFF2C2C2C),
      ),

      // Card theme
      cardTheme: CardTheme(
        color: Color(0xFF2C2C2C),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),

      // Divider theme
      dividerTheme: DividerThemeData(
        color: Colors.grey.shade800,
        thickness: 1,
      ),
    );
  }
}
