import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';

class DropAppTheme {
  static const _lightFillColor = Colors.black;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);

  static ThemeData lightThemeData =
  themeData(lightColorScheme, _lightFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: _textTheme,
      iconTheme: IconThemeData(color: DropAppColors.white),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      focusColor: DropAppColors.primaryColor,
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: DropAppColors.primaryColor,
    secondary: DropAppColors.accentPrimaryColor,
    background: Colors.white,
    surface: Color(0xFFFAFBFB),
    onBackground: DropAppColors.white100,
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
    displayLarge: TextStyle(
      fontFamily: DropStringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_96,
      color: DropAppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    displayMedium: TextStyle(
      fontFamily: DropStringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_60,
      color: DropAppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    displaySmall: TextStyle(
      fontFamily: DropStringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_48,
      color: DropAppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headlineLarge: TextStyle(
      fontFamily: DropStringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_34,
      color: DropAppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headlineMedium: TextStyle(
      fontFamily: DropStringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_24,
      color: DropAppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headlineSmall: TextStyle(
      fontFamily: DropStringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_20,
      color: DropAppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    titleLarge: TextStyle(
      fontFamily: DropStringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_16,
      color: DropAppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    titleMedium: TextStyle(
      fontFamily: DropStringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_14,
      color: DropAppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    bodyLarge: TextStyle(
      fontFamily: DropStringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_16,
      color: DropAppColors.primaryText,
      fontWeight: _regular,
      fontStyle: FontStyle.normal,
    ),
    bodyMedium: TextStyle(
      fontFamily: DropStringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_14,
      color: DropAppColors.primaryText,
      fontWeight: _light,
      fontStyle: FontStyle.normal,
    ),
    bodySmall: TextStyle(
      fontFamily: DropStringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_14,
      color: DropAppColors.primaryText,
      fontStyle: FontStyle.normal,
      fontWeight: _regular,
    ),
  );
}