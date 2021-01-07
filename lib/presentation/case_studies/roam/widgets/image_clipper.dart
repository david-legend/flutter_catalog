import 'package:flutter/material.dart';

class ImageClipper extends CustomClipper<Path> {
  const ImageClipper();

  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.moveTo(0, size.height * 0.9);
    var firstEndpoint = Offset(size.width * 0.1, size.height * 0.92);
    var firstControlPoint = Offset(size.width * 0.0, size.height * 0.92);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);
    path.lineTo(size.width * 0.9, size.height);

    var secondEndpoint = Offset(size.width, size.height * 0.8);
    var secondControlPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndpoint.dx, secondEndpoint.dy);

    path.lineTo(size.width, 0);
    path.lineTo(0.0, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(ImageClipper oldClipper) => false;
}
