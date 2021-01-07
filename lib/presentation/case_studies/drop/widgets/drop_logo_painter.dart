import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttercatalog/values/values.dart';

class DropLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var rect = Offset.zero & size;
    double width = size.width;
    double height = size.height;

//    canvas.drawRect(
//      rect,
//      Paint()..color = DropAppColors.primaryColor,
//    );

    var paint1 = Paint()..color = DropAppColors.accentDarkGreenColor;

    drawMultiColoredSquare(canvas, size);
    drawTearDrop(canvas, size);

//    drawLetterD(canvas, size);
//    canvas.drawRRect(
//      RRect.fromRectAndCorners(
//        Rect.fromLTWH(0, 0, width, height),
//        topLeft: Radius.circular(20.0),
//        bottomLeft: Radius.circular(20.0),
//        bottomRight: Radius.circular(80.0),
//        topRight: Radius.circular(80.0),
//      ),
//      paint1,
//    );
  }

  void drawMultiColoredSquare(Canvas canvas, Size size) {
    Paint paint = Paint();
    double width = size.width;
    double height = size.height;
    List<Color> colors = [
      DropAppColors.accentPurpleColor,
      DropAppColors.accentPinkColor,
      DropAppColors.accentYellowColor,
      DropAppColors.accentDarkGreenColor,
      DropAppColors.accentOrangeColor,
    ];
    double step = 1 / colors.length;
    for (int index = 0; index < colors.length; index++) {
      Path path = Path();
      double currentStep = step * index;
      path.moveTo(0.0, (height * currentStep));
      path.lineTo(width, (height * currentStep));
      path.lineTo(width, height * (currentStep + step));
      path.lineTo(width * 0, height * (currentStep + step));
      path.lineTo(width * 0, height * (currentStep));

      paint.color = colors[index];
      canvas.drawPath(path, paint);
    }
  }

  void drawTearDrop(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();
    double width = size.width;
    double height = size.height;

    double radius = (width * 0.5) / 2;

    path.moveTo(width * 0.5, height * 0.2);
    path.lineTo((width * 0.5) - (radius / 2), height * 0.4);

    var firstEndpoint = Offset(size.width * 0.5, size.height * 0.75);
    var firstControlPoint = Offset(size.width * 0.25, size.height * 0.6);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    var secondEndpoint = Offset((size.width * 0.5), size.height * 0.75);
    var secondControlPoint = Offset(size.width * 0.5, size.height * 0.90);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndpoint.dx, secondEndpoint.dy);

    var thirdEndpoint =
        Offset((size.width * 0.5) + (radius / 2), size.height * 0.4);
    var thirdControlPoint = Offset(size.width * 0.75, size.height * 0.60);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndpoint.dx, thirdEndpoint.dy);

    path.lineTo(width * 0.5, height * 0.2);
    paint.color = DropAppColors.white;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(DropLogoPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(DropLogoPainter oldDelegate) => false;
}
