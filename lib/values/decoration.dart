part of 'values.dart';

class Decorations {
  static customBoxDecoration({
    double blurRadius = 5,
    Color color = const Color(0xFFD6D7FB),
  }) {
    return BoxDecoration(
        boxShadow: [BoxShadow(blurRadius: blurRadius, color: color)]);
  }

  static const BoxDecoration primaryDecoration = BoxDecoration(
    color: DropAppColors.secondaryColor,
    borderRadius: const BorderRadius.only(
      topLeft: const Radius.circular(Sizes.RADIUS_30),
      topRight: const Radius.circular(Sizes.RADIUS_30),
    ),
  );
}
