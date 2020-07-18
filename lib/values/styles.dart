part of 'values.dart';

class Styles {
  static TextStyle customTextStyle({
    Color color = AppColors.primaryText,
    FontWeight fontWeight = FontWeight.w600,
    double fontSize = Sizes.TEXT_SIZE_14,
    FontStyle fontStyle: FontStyle.normal,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle customTextStyle2({
    Color color = AppColors.primaryText,
    FontWeight fontWeight = FontWeight.w600,
    double fontSize = Sizes.TEXT_SIZE_16,
    FontStyle fontStyle: FontStyle.normal,
  }) {
    return GoogleFonts.roboto(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }
}
