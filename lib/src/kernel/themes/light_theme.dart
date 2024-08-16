import 'package:flutter/material.dart';

// Third-Party packages.
import 'package:google_fonts/google_fonts.dart';

// Local project.
import 'package:furniture_store/src/kernel/constants/colors.dart';
import 'package:furniture_store/src/kernel/themes/font_size.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      textTheme: TextTheme(
        bodySmall: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.small,
          color: ColorPalette.cynicalBlack,
        ),
        bodyMedium: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.standard,
          color: Colors.white,
        ),
        bodyLarge: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.large,
          color: ColorPalette.cynicalBlack,
        ),
        titleSmall: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.large,
          color: ColorPalette.cynicalBlack,
        ),
        titleMedium: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.extraLarge,
          color: ColorPalette.cynicalBlack,
        ),
        titleLarge: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.doubleExtraLarge,
          color: ColorPalette.cynicalBlack,
          fontWeight: FontWeight.bold,
        ),
        labelSmall: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.small,
          color: ColorPalette.cynicalBlack,
        ),
        labelMedium: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.extraLarge,
          color: ColorPalette.cynicalBlack,
        ),
        labelLarge: GoogleFonts.alegreyaSans(
          fontSize: FontSizes.doubleExtraLarge,
          color: ColorPalette.cynicalBlack,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
