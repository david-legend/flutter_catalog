import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

import 'custom_painters.dart';

enum TearDropAlignment { topLeft, topRight, bottomLeft, bottomRight }

class TearDropButton extends StatelessWidget {
  TearDropButton({
    required this.buttonText,
    this.radius,
    this.tearDropAlignment = TearDropAlignment.topRight,
    this.buttonTextStyle,
    this.color = AppColors.orangeShade6,
    this.style = PaintingStyle.fill,
    this.onTap,
    this.elevation = Sizes.ELEVATION_8,
    this.hasShadow = false,
    this.shadowColor,
  });

  final double? radius;
  final Color color;
  final TearDropAlignment tearDropAlignment;
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final PaintingStyle style;
  final GestureTapCallback? onTap;
  final bool hasShadow;
  final double elevation;
  final Color? shadowColor;

  @override
  Widget build(BuildContext context) {
    double defaultRadius = assignHeight(context: context, fraction: 0.07);
    ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      child: Container(
        height: (radius ?? defaultRadius) * 2,
        width: (radius ?? defaultRadius) * 2,
        child: Stack(
          children: [
            Container(
              height: (radius ?? defaultRadius) * 2,
              width: (radius ?? defaultRadius) * 2,
              child: CustomPaint(
                painter: DrawTearDrop(
                    color: color,
                    offset: Offset(
                      radius ?? defaultRadius,
                      radius ?? defaultRadius,
                    ),
                    elevation: elevation,
                    shadowColor: shadowColor,
                    hasShadow: hasShadow,
                    paintingStyle: style,
                    radius: radius ?? defaultRadius,
                    tearDropAlignment: tearDropAlignment),
              ),
            ),
            Container(
              height: ( radius ?? defaultRadius  ) * 2,
              width: ( radius ?? defaultRadius ) * 2,
              child: Center(
                child: Text(
                  buttonText,
                  textAlign: TextAlign.center,
                  style: buttonTextStyle ??
                      theme.textTheme.bodyLarge?.copyWith(
                        color: AppColors.white,
                      ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
