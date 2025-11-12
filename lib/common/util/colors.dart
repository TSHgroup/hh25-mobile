import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odpalgadke/common/router/go_router.dart';

final primary = Color(0xFF3B82F6);
final accent = Color(0xFFF87171);
final success = Color(0xFF34D399);

final background = Color(0xFFF3F4F6);
final cardBackground = Color(0xFFFFFFFF);

final textPrimary = Color(0xFF1F2937);
final textSecondary = Color(0xFF4B5563);
final textOnPrimary = Color(0xFFFFFFFF);

final warning = Color(0xFFFBBF24);
final error = Color(0xFFEF4444);

ThemeData getAppTheme() {
  return ThemeData(
    primaryColor: primary,
    scaffoldBackgroundColor: background,
    shadowColor: Colors.grey.withAlpha(30),

    appBarTheme: AppBarTheme(
      backgroundColor: primary,
      elevation: 2,
      iconTheme: IconThemeData(color: textOnPrimary),
      titleTextStyle: GoogleFonts.lato(
        color: textOnPrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),

    buttonTheme: ButtonThemeData(
      buttonColor: accent,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: accent,
        foregroundColor: textOnPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),

    textTheme: GoogleFonts.latoTextTheme().copyWith(
      displayLarge: GoogleFonts.lato(
        color: textPrimary,
        fontSize: 57,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.lato(
        color: textPrimary,
        fontSize: 45,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: GoogleFonts.lato(
        color: textPrimary,
        fontSize: 36,
        fontWeight: FontWeight.bold,
      ),

      headlineLarge: GoogleFonts.lato(
        color: textPrimary,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: GoogleFonts.lato(
        color: textPrimary,
        fontSize: 28,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: GoogleFonts.lato(
        color: textPrimary,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),

      titleLarge: GoogleFonts.lato(
        color: textPrimary,
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: GoogleFonts.lato(
        color: textPrimary,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: GoogleFonts.lato(
        color: textSecondary,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),

      bodyLarge: GoogleFonts.lato(color: textPrimary, fontSize: 16),
      bodyMedium: GoogleFonts.lato(color: textSecondary, fontSize: 14),
      bodySmall: GoogleFonts.lato(color: textSecondary, fontSize: 12),

      labelLarge: GoogleFonts.lato(
        color: textOnPrimary,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      labelMedium: GoogleFonts.lato(
        color: textOnPrimary,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      labelSmall: GoogleFonts.lato(
        color: textOnPrimary,
        fontSize: 11,
        fontWeight: FontWeight.w600,
      ),
    ),

    progressIndicatorTheme: ProgressIndicatorThemeData(color: accent),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: accent,
      selectionColor: accent.withAlpha(30),
      selectionHandleColor: accent,
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: success,
      foregroundColor: textOnPrimary,
    ),

    snackBarTheme: SnackBarThemeData(
      backgroundColor: primary,
      contentTextStyle: GoogleFonts.lato(color: textOnPrimary),
      behavior: SnackBarBehavior.floating,
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      hintStyle: GoogleFonts.lato(color: textSecondary),
    ),
  );
}

TextTheme get textTheme {
  final context = navigatorKey.currentState!.context;
  return Theme.of(context).textTheme;
}
