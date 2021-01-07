import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';

class GradientOverlay extends StatelessWidget {
  final Gradient gradient;
  final double height;
  final double width;

  GradientOverlay({
    this.gradient = Gradients.footerOverlayGradient,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Positioned(
      width: this.width ?? width,
      height: height,
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: gradient,
        ),
        child: Container(),
      ),
    );
  }
}
