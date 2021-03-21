import 'package:flutter/material.dart';

class RectanglePath extends StatelessWidget {
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
      ..style = PaintingStyle.stroke;

    final rectangle = Rect.fromPoints(
      Offset(size.width * 1 / 4, size.height * 1 / 4),
      Offset(size.width * 3/4, size.height * 3/4),
    );

    canvas.drawRect(rectangle, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
