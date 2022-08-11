import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/tear_drop_button.dart';

//************************ for root screen *********************************//
class CustomRootScreenShapeClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height * 0.5);

    var firstEndpoint = Offset(size.width * 0.7, size.height * 0);
    var firstControlPoint = Offset(size.width * 0.75, size.height * 0.45);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class CustomRootScreenShapeClipper2 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.moveTo(size.width * 0.3, size.height);
    path.lineTo(size.width * 0.3, size.height);
    path.lineTo(size.width, size.height * 0.5);

    var firstEndpoint = Offset(size.width * 0.3, size.height);
    var firstControlPoint = Offset(size.width * 0.25, size.height * 0.75);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

//    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

//************************ for login design 1 *********************************
class CustomLoginShapeClipper1 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height * 0.5);

    var firstEndpoint = Offset(size.width, size.height * 0.25);
    var firstControlPoint = Offset(size.width * 0.75, size.height * 0.5);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class CustomLoginShapeClipper2 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height * 0.85);

    var firstEndpoint = Offset(size.width, size.height * 0.7);
    var firstControlPoint = Offset(size.width * 0.6, size.height * 0.85);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class CustomSignUpShapeClipper1 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height * 0.30);

    var firstEndpoint = Offset(size.width, size.height * 0.15);
    var firstControlPoint = Offset(size.width * 0.5, size.height * 0.13);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class CustomSignUpShapeClipper2 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height);

    var firstEndpoint = Offset(size.width, size.height * 0.52);
    var firstControlPoint = Offset(size.width * 0.25, size.height * 0.52);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class CustomSignUpShapeClipper3 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();

    path.lineTo(0.0, size.height * 0.8);

    var firstEndpoint = Offset(size.width, size.height * 0.7);
    var firstControlPoint = Offset(size.width * 0.70, size.height * 0.8);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

//************************ for login design 3 *********************************
class CustomLoginShapeClipper4 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height * 0.325);

//    path.lineTo(0.0, size.height * 0.3);

    var firstEndpoint = Offset(size.width * 0.22, size.height * 0.2);
    var firstControlPoint = Offset(size.width * 0.125, size.height * 0.30);

//    var firstEndpoint = Offset(size.width * 0.17, size.height * 0.2);
//    var firstControlPoint = Offset(size.width * 0.075, size.height * 0.30);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    var secondEndpoint = Offset(size.width * 0.6, size.height * 0.0725);
    var secondControlPoint = Offset(size.width * 0.3, size.height * 0.0825);

//    var secondEndpoint = Offset(size.width * 0.6, size.height * 0.05);
//    var secondControlPoint = Offset(size.width * 0.3, size.height * 0.06);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndpoint.dx, secondEndpoint.dy);

    var thirdEndpoint = Offset(size.width, size.height * 0.0);
    var thirdControlPoint = Offset(size.width * 0.99, size.height * 0.05);

//    var thirdEndpoint = Offset(size.width * 0.95, size.height * 0.0);
//    var thirdControlPoint = Offset(size.width * 0.9, size.height * 0.05);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndpoint.dx, thirdEndpoint.dy);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class CustomLoginShapeClipper5 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height * 0.3);

    var firstEndpoint = Offset(size.width * 0.17, size.height * 0.2);
    var firstControlPoint = Offset(size.width * 0.075, size.height * 0.30);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    var secondEndpoint = Offset(size.width * 0.6, size.height * 0.05);
    var secondControlPoint = Offset(size.width * 0.3, size.height * 0.06);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndpoint.dx, secondEndpoint.dy);

    var thirdEndpoint = Offset(size.width * 0.95, size.height * 0.0);
    var thirdControlPoint = Offset(size.width * 0.9, size.height * 0.05);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndpoint.dx, thirdEndpoint.dy);

//    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class CustomLoginShapeClipper3 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.moveTo(size.width * 0.05, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.7);

    var firstEndpoint = Offset(size.width * 0.83, size.height * 0.8);
    var firstControlPoint = Offset(size.width * 0.925, size.height * 0.70);
//
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);
//
    var secondEndpoint = Offset(size.width * 0.30, size.height * 0.95);
    var secondControlPoint =
        Offset(size.width * 0.70, size.height * 0.92); //height
//
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndpoint.dx, secondEndpoint.dy);
//
    var thirdEndpoint = Offset(size.width * 0.05, size.height);
    var thirdControlPoint =
        Offset(size.width * 0.1, size.height * 0.95); //width

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndpoint.dx, thirdEndpoint.dy);
//
//
//    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class CustomLoginShapeClipper6 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.moveTo(size.width * 0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.675);

    var firstEndpoint = Offset(size.width * 0.78, size.height * 0.8);
    var firstControlPoint = Offset(size.width * 0.875, size.height * 0.70);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    var secondEndpoint = Offset(size.width * 0.30, size.height * 0.9275);
    var secondControlPoint = Offset(size.width * 0.70, size.height * 0.8975);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndpoint.dx, secondEndpoint.dy);

    var thirdEndpoint = Offset(size.width * 0.0, size.height);
    var thirdControlPoint = Offset(size.width * 0.04, size.height * 0.95);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndpoint.dx, thirdEndpoint.dy);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

//************************ for LoginDesign4 *********************************//

class LoginDesign4ShapeClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height * 0.8);

    var firstEndpoint = Offset(size.width * 0.6, size.height * 0.55);
    var firstControlPoint = Offset(size.width * 0.40, size.height);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    var secondEndpoint = Offset(size.width * 0.8, size.height * 0.35);
    var secondControlPoint = Offset(size.width * 0.7, size.height * 0.35);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndpoint.dx, secondEndpoint.dy);

    var thirdEndpoint = Offset(size.width * 0.9, size.height * 0.25);
    var thirdControlPoint = Offset(size.width * 0.9, size.height * 0.35);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndpoint.dx, thirdEndpoint.dy);

    var fourthEndpoint = Offset(size.width * 0.78, size.height * 0.15);
    var fourthControlPoint = Offset(size.width * 0.9, size.height * 0.15);

    path.quadraticBezierTo(fourthControlPoint.dx, fourthControlPoint.dy,
        fourthEndpoint.dx, fourthEndpoint.dy);

    var fifthEndpoint = Offset(size.width * 0.5, size.height * 0);
    var fifthControlPoint = Offset(size.width * 0.6, size.height * 0.15);

    path.quadraticBezierTo(fifthControlPoint.dx, fifthControlPoint.dy,
        fifthEndpoint.dx, fifthEndpoint.dy);
//    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

//************************ for LoginDesign5 *********************************//

class SemiCircleShapeClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.moveTo(size.width * 0.1, size.height * 0.0);

    var firstEndpoint = Offset(size.width * 0.9, size.height * 0.0);
    var firstControlPoint = Offset(size.width * 0.45, size.height);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class SemiCircleShapeClipper2 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.moveTo(size.width * 0.7, size.height * 0.0);

    var firstEndpoint = Offset(size.width, size.height * 0.8);
    var firstControlPoint = Offset(size.width * 0.6, size.height * 0.7);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

//************************ for LoginDesign6 *********************************//

class WaveShapeClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(size.width * 0.0, size.height * 0.6);

    var firstEndpoint = Offset(size.width * 0.5, size.height * 0.6);
    var firstControlPoint = Offset(size.width * 0.25, size.height * 0.4);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    var secondEndpoint = Offset(size.width, size.height * 0.8);
    var secondControlPoint = Offset(size.width * 0.75, size.height * 0.8);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndpoint.dx, secondEndpoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class ReverseWaveShapeClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(size.width * 0.0, size.height * 0.8);

    var firstEndpoint = Offset(size.width * 0.5, size.height * 0.8);
    var firstControlPoint = Offset(size.width * 0.25, size.height);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    var secondEndpoint = Offset(size.width, size.height * 0.6);
    var secondControlPoint = Offset(size.width * 0.75, size.height * 0.6);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndpoint.dx, secondEndpoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

//************************ for LoginDesign7 *********************************//

class LoginDesign7ShapeClipper1 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(size.width * 0.0, size.height * 0.5);

    var firstEndpoint = Offset(size.width * 0.6, size.height * 0.0);
    var firstControlPoint = Offset(size.width * 0.3, size.height);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class LoginDesign7ShapeClipper2 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.moveTo(size.width * 0.3, size.height * 0.0);

    var firstEndpoint = Offset(size.width, size.height);
    var firstControlPoint = Offset(size.width * 0.2, size.height * 1);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class LoginDesign7ShapeClipper3 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final Path path = Path();
    path.moveTo(size.width * 0.0, size.height * 0.9);

    var firstEndpoint = Offset(size.width * 0.3, size.height);
    var firstControlPoint = Offset(size.width * 0.3, size.height * 0.8);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

//************************ for LoginDesign9 *********************************//

class LoginDesign9ShapeClipper extends CustomClipper<Path> {
  LoginDesign9ShapeClipper({
    required this.offset,
    required this.radius,
    this.tearDropAlignment = TearDropAlignment.topRight,
  });

  final double radius;
  final Offset offset;
  final TearDropAlignment tearDropAlignment;

  @override
  getClip(Size size) {
    final Path path = Path();

    if (tearDropAlignment == TearDropAlignment.topLeft) {
      drawPathForTopLeftAlignment(size, path);
    } else if (tearDropAlignment == TearDropAlignment.topRight) {
      drawPathForTopRightAlignment(size, path);
    } else if (tearDropAlignment == TearDropAlignment.bottomRight) {
      drawPathForBottomRightAlignment(size, path);
    } else if (tearDropAlignment == TearDropAlignment.bottomLeft) {
      drawPathForBottomLeftAlignment(size, path);
    }

    path.addOval(Rect.fromCircle(center: offset, radius: radius));

    path.close();
    return path;
  }

  void drawPathForTopRightAlignment(Size size, Path path) {
    path.moveTo(size.width, size.height * 0.0);
    path.lineTo(size.width, size.height * 0.5);
    path.lineTo(size.width * 0.5, size.height * 0.5);
    path.lineTo(size.width * 0.5, size.height * 0.0);
    path.lineTo(size.width, size.height * 0);
  }

  void drawPathForTopLeftAlignment(Size size, Path path) {
    path.moveTo(size.width * 0.0, size.height * 0.0);
    path.lineTo(size.width * 0.5, size.height * 0.0);
    path.lineTo(size.width * 0.5, size.height * 0.5);
    path.lineTo(size.width * 0.0, size.height * 0.5);
    path.lineTo(size.width * 0.0, size.height * 0);
  }

  void drawPathForBottomRightAlignment(Size size, Path path) {
    path.moveTo(size.width, size.height);
    path.lineTo(size.width * 0.5, size.height);
    path.lineTo(size.width * 0.5, size.height * 0.5);
    path.lineTo(size.width, size.height * 0.5);
    path.lineTo(size.width, size.height);
  }

  void drawPathForBottomLeftAlignment(Size size, Path path) {
    path.moveTo(size.width * 0.0, size.height);
    path.lineTo(size.width * 0.0, size.height * 0.5);
    path.lineTo(size.width * 0.5, size.height * 0.5);
    path.lineTo(size.width * 0.5, size.height);
    path.lineTo(size.width * 0.0, size.height);
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
