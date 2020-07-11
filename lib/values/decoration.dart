part of 'values.dart';

class Decorations {
  static customBoxDecoration({
    double blurRadius = 5,
    Color color = const Color(0xFFD6D7FB),
  }) {
    return BoxDecoration(
        boxShadow: [BoxShadow(blurRadius: blurRadius, color: color)]);
  }
}
