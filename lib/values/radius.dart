part of 'values.dart';

class AppRadius {
  static const BorderRadius primaryRadius = const BorderRadius.only(
    topLeft: const Radius.circular(Sizes.RADIUS_30),
    topRight: const Radius.circular(Sizes.RADIUS_30),
  );

  static const BorderRadius defaultButtonRadius = const BorderRadius.only(
    topLeft: const Radius.circular(Sizes.RADIUS_30),
    bottomLeft: const Radius.circular(Sizes.RADIUS_30),
  );
}
