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
        bodySmall: GoogleFonts.vazirmatn(
          fontSize: FontSizes.small,
          color: ColorPalette.cosmosBlue,
        ),
        bodyMedium: GoogleFonts.vazirmatn(
          fontSize: FontSizes.standard,
          color: ColorPalette.cosmosBlue,
        ),
        bodyLarge: GoogleFonts.vazirmatn(
          fontSize: FontSizes.large,
          color: ColorPalette.cosmosBlue,
        ),
        titleSmall: GoogleFonts.vazirmatn(
          fontSize: FontSizes.large,
          color: ColorPalette.cosmosBlue,
        ),
        titleMedium: GoogleFonts.vazirmatn(
          fontSize: FontSizes.doubleExtraLarge,
          color: ColorPalette.cosmosBlue,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: GoogleFonts.vazirmatn(
          fontSize: FontSizes.large,
          fontWeight: FontWeight.bold,
          color: ColorPalette.cosmosBlue,
        ),
        labelSmall: GoogleFonts.vazirmatn(
          fontSize: FontSizes.small,
          color: ColorPalette.cosmosBlue,
        ),
        labelMedium: GoogleFonts.vazirmatn(
          fontSize: FontSizes.extraLarge,
          color: ColorPalette.cosmosBlue,
        ),
        labelLarge: GoogleFonts.vazirmatn(
          fontSize: FontSizes.doubleExtraLarge,
          color: ColorPalette.cosmosBlue,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
