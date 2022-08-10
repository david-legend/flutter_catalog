import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:google_fonts/google_fonts.dart';

class RoamAppTheme {
  static const _lightFillColor = Colors.black;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);

  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: _textTheme,
      iconTheme: IconThemeData(color: RoamAppColors.white),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      accentColor: colorScheme.primary,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      focusColor: RoamAppColors.primaryColor,
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: RoamAppColors.primaryColor,
    secondary: RoamAppColors.accentColor,
    background: Colors.white,
    surface: Color(0xFFFAFBFB),
    onBackground: RoamAppColors.white100,
    error: _lightFillColor,
    onError: _lightFillColor,
    onPrimary: _lightFillColor,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const _superBold = FontWeight.w900;
  static const _bold = FontWeight.w700;
  static const _semiBold = FontWeight.w600;
  static const _medium = FontWeight.w500;
  static const _regular = FontWeight.w400;
  static const _light = FontWeight.w300;

  static final TextTheme _textTheme = TextTheme(
    displayLarge: GoogleFonts.roboto(
      fontSize: Sizes.TEXT_SIZE_96,
      color: RoamAppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: Sizes.TEXT_SIZE_60,
      color: RoamAppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: Sizes.TEXT_SIZE_48,
      color: RoamAppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headlineLarge: GoogleFonts.poppins(
      fontSize: Sizes.TEXT_SIZE_34,
      color: RoamAppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: Sizes.TEXT_SIZE_24,
      color: RoamAppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: Sizes.TEXT_SIZE_20,
      color: RoamAppColors.black50,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: Sizes.TEXT_SIZE_16,
      color: RoamAppColors.primaryText,
      fontWeight: _semiBold,
      fontStyle: FontStyle.normal,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: Sizes.TEXT_SIZE_14,
      color: RoamAppColors.primaryText,
      fontWeight: _semiBold,
      fontStyle: FontStyle.normal,
    ),
    bodyLarge: GoogleFonts.poppins(
      fontSize: Sizes.TEXT_SIZE_16,
      color: RoamAppColors.primaryText,
      fontWeight: _light,
      fontStyle: FontStyle.normal,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: Sizes.TEXT_SIZE_14,
      color: RoamAppColors.primaryText,
      fontWeight: _light,
      fontStyle: FontStyle.normal,
    ),
    bodySmall: GoogleFonts.poppins(
      fontSize: Sizes.TEXT_SIZE_14,
      color: RoamAppColors.primaryText,
      fontStyle: FontStyle.normal,
      fontWeight: _medium,
    ),
  );
}
