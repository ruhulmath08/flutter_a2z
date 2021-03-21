import 'package:flutter/material.dart';

class TrianglePath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        width: 300,
        height: 300,
        child: CustomPaint(
          painter: TrianglePainter(),
        ),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(size.width*1/2, size.height*1/4);
    path.lineTo(size.width*1/6, size.height*3/4);
    path.lineTo(size.width*5/6, size.height*3/4);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
