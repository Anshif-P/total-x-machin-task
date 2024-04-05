import 'dart:math';
import 'package:flutter/material.dart';

class HalfDisc extends StatelessWidget {
  const HalfDisc({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(
          120, 93), // Width is greater than height to form a semicircle
      painter: HalfDiscPainter(),
    );
  }
}

class HalfDiscPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue // Change the color as needed
      ..style = PaintingStyle.fill;

    final double radius = size.height / 2;
    final double centerX = size.width / 2;

    // Draw the top half-circle
    canvas.drawArc(
      Rect.fromCircle(center: Offset(centerX, radius), radius: radius),
      0, // Start angle
      pi, // Sweep angle
      true, // Use center
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
