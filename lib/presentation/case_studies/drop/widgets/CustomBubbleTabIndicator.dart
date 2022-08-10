import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttercatalog/values/values.dart';

/// Used with [TabBar.indicator] to draw a bubble on the
/// selected tab.
///
/// The [indicatorHeight] defines the bubble height.
/// The [indicatorColor] defines the bubble color.
/// The [indicatorRadius] defines the bubble corner radius.
/// The [tabBarIndicatorSize] specifies the type of TabBarIndicatorSize i.e label or tab.
/// /// The selected tab bubble is inset from the tab's boundary by [insets] when [tabBarIndicatorSize] is tab.
/// The selected tab bubble is applied padding by [padding] when [tabBarIndicatorSize] is label.

class CustomBubbleTabIndicator extends Decoration {
  final double? indicatorHeight;
  final Color? indicatorColor;
  final Color? indicatorBorderColor;
  final double? indicatorRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? insets;
  final TabBarIndicatorSize? tabBarIndicatorSize;

  const CustomBubbleTabIndicator({
    this.indicatorHeight: 20.0,
    this.indicatorColor: Colors.greenAccent,
    this.indicatorBorderColor: DropAppColors.primaryColor,
    this.indicatorRadius: 100.0,
    this.tabBarIndicatorSize = TabBarIndicatorSize.label,
    this.padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
    this.insets: const EdgeInsets.symmetric(horizontal: 5.0),
  })  : assert(indicatorHeight != null),
        assert(indicatorColor != null),
        assert(indicatorRadius != null),
        assert(padding != null),
        assert(insets != null);

  @override
  Decoration? lerpFrom(Decoration? a, double t) {
    if (a is CustomBubbleTabIndicator) {
      return new CustomBubbleTabIndicator(
        padding: EdgeInsetsGeometry.lerp(a.padding, padding, t),
        insets: EdgeInsetsGeometry.lerp(a.insets, insets, t),
      );
    }
    return super.lerpFrom(a, t);
  }

  @override
  Decoration? lerpTo(Decoration? b, double t) {
    if (b is CustomBubbleTabIndicator) {
      return new CustomBubbleTabIndicator(
        padding: EdgeInsetsGeometry.lerp(padding, b.padding, t),
        insets: EdgeInsetsGeometry.lerp(insets, b.insets, t),
      );
    }
    return super.lerpTo(b, t);
  }

  @override
  _BubblePainter createBoxPainter([VoidCallback? onChanged]) {
    return new _BubblePainter(decoration: this, onChanged: onChanged);
  }
}

class _BubblePainter extends BoxPainter {
  _BubblePainter({required this.decoration, VoidCallback? onChanged})
      :
        super(onChanged);

  final CustomBubbleTabIndicator decoration;

  double? get indicatorHeight => decoration.indicatorHeight;

  Color? get indicatorColor => decoration.indicatorColor;

  Color? get indicatorBorderColor => decoration.indicatorBorderColor;

  double? get indicatorRadius => decoration.indicatorRadius;

  EdgeInsetsGeometry? get padding => decoration.padding;

  EdgeInsetsGeometry? get insets => decoration.insets;

  TabBarIndicatorSize? get tabBarIndicatorSize => decoration.tabBarIndicatorSize;

  Rect _indicatorRectFor(
      Rect rect,
      TextDirection textDirection,
      ) {
    assert(rect != null);
    assert(textDirection != null);

    Rect indicator = padding!.resolve(textDirection).inflateRect(rect);

    if (tabBarIndicatorSize == TabBarIndicatorSize.tab) {
      indicator = insets!.resolve(textDirection).deflateRect(rect);
    }

    return new Rect.fromLTWH(
      indicator.left,
      indicator.top,
      indicator.width,
      indicator.height,
    );
  }

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);

    final TextDirection textDirection = configuration.textDirection!;
    final Rect rect1 = Offset(
        offset.dx, (configuration.size!.height / 2) - indicatorHeight! / 2) &
    Size(configuration.size!.width + 4, indicatorHeight! + 4);

    final Rect rect2 = Offset(offset.dx + 2,
        ((configuration.size!.height / 2) - indicatorHeight! / 2) + 2) &
    Size(configuration.size!.width, indicatorHeight!);

    final Paint paint = Paint();
    paint.color = indicatorColor!;
    paint.style = PaintingStyle.fill;

    canvas.drawRRect(
      RRect.fromRectAndCorners(
        _indicatorRectFor(
          rect1,
          textDirection,
        ),
        topLeft: Radius.circular(indicatorRadius!),
        bottomLeft: Radius.circular(indicatorRadius!),
        bottomRight: Radius.circular(indicatorRadius!),
        topRight: Radius.circular(indicatorRadius!),
      ),
      Paint()..color = indicatorBorderColor!,
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        _indicatorRectFor(
          rect2,
          textDirection,
        ),
        Radius.circular(indicatorRadius!),
      ),
      paint,
    );
  }
}
