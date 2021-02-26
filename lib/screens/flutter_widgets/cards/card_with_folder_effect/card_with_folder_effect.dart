import 'package:flutter/material.dart';

class CardWithFolderEffect extends StatefulWidget {
  final String title;

  const CardWithFolderEffect({Key key, this.title}) : super(key: key);

  @override
  _CardWithFolderEffectState createState() => _CardWithFolderEffectState();
}

class _CardWithFolderEffectState extends State<CardWithFolderEffect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 20),
            elevation: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  child: triangleCorner(),
                ),
                Text(index.toString())
              ],
            ),
          );
        },
      ),
    );
  }
}

Widget triangleCorner() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      SizedBox(
        height: 12.0,
        width: 8.0,
        child: CustomPaint(
          painter: TrianglePainter(),
        ),
      ),
      Container(
        decoration: const BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(6.0),
            bottomLeft: Radius.circular(6.0),
          ),
        ),
        width: 120.0,
        height: 30.0,
        child: const Center(
          child: Text(
            'Custom Banner',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ],
  );
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2.0;
    final Path path = Path();
    path.moveTo(0.0, size.height);
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}