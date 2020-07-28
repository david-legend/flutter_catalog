part of values;

class Borders {
  static const InputBorder defaultBorder = OutlineInputBorder(
//    borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
    borderSide: BorderSide(
      color: AppColors.white,
      width: 0.0,
      style: BorderStyle.none,
    ),
  );

  static customBorder({
    Color color = AppColors.blackShade10,
    double width = Sizes.WIDTH_1,
    BorderStyle style = BorderStyle.solid,
  }) {
    return BorderSide(
      color: color,
      width: width,
      style: style,
    );
  }

  static const BorderSide defaultPrimaryBorder =
      BorderSide(width: Sizes.WIDTH_0, style: BorderStyle.none);

  static const UnderlineInputBorder noBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      style: BorderStyle.none,
    ),
  );

  static customOutlineInputBorder({
    double borderRadius = Sizes.RADIUS_12,
    Color color = AppColors.primaryColor,
    double width = Sizes.WIDTH_1,
    BorderStyle style = BorderStyle.solid,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      borderSide: BorderSide(
        color: color,
        width: width,
        style: style,
      ),
    );
  }

  static customUnderlineInputBorder({
    Color color = AppColors.primaryColor,
    double width = Sizes.WIDTH_1,
    BorderStyle style = BorderStyle.solid,
  }) {
    return UnderlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: width,
        style: style,
      ),
    );
  }

  static const UnderlineInputBorder primaryInputBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.white100,
      width: Sizes.WIDTH_1,
      style: BorderStyle.solid,
    ),
  );

  static const UnderlineInputBorder disabledBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.grey,
      width: Sizes.WIDTH_1,
      style: BorderStyle.solid,
    ),
  );

  static const UnderlineInputBorder enabledBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.white100,
      width: Sizes.WIDTH_1,
      style: BorderStyle.solid,
    ),
  );

  static const UnderlineInputBorder focusedBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.black50,
      width: Sizes.WIDTH_2,
      style: BorderStyle.solid,
    ),
  );
}
