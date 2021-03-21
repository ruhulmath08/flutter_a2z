import 'package:flutter/material.dart';

class RoundedRectanglePath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        width: 300,
        height: 300,
        child: CustomPaint(
          painter: RectanglePainter(),
        ),
      ),
    );
  }
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke; //PaintingStyle.stroke for fill the rectangle

    final rectangle = Rect.fromPoints(
      Offset(size.width * 1 / 6, size.height * 1 / 6),
      Offset(size.width * 5/6, size.height * 5/6),
    );

    const radius = Radius.circular(30);

    canvas.drawRRect(RRect.fromRectAndRadius(rectangle, radius), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
