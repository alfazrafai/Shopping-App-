import 'package:flutter/material.dart';

class CustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstStart = Offset(0, size.height - 20);
    final lastStart = Offset(30, size.height - 20);
    path.quadraticBezierTo(
      firstStart.dx,
      firstStart.dy,
      lastStart.dx,
      lastStart.dy,
    );

    final secondStart = Offset(0, size.height - 20);
    final secondEnd = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
      secondStart.dx,
      secondStart.dy,
      secondEnd.dx,
      secondEnd.dy,
    );

    final thirdStart = Offset(size.width, size.height - 20);
    final thirdEnd = Offset(size.width, size.height);
    path.quadraticBezierTo(
      thirdStart.dx,
      thirdStart.dy,
      thirdEnd.dx,
      thirdEnd.dy,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
