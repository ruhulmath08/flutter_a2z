import 'package:flutter/material.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class CardWithRoundedCorner extends StatefulWidget {
  final String title;

  const CardWithRoundedCorner({Key key, this.title}) : super(key: key);

  @override
  _CardWithRoundedCornerState createState() => _CardWithRoundedCornerState();
}

class _CardWithRoundedCornerState extends State<CardWithRoundedCorner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          Card(
            child: Container(
              height: 150,
              padding: const EdgeInsets.all(12),
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.blueGrey,
                geometry: BadgeGeometry(width: 70, height: 70),
                textSpan: TextSpan(
                  text: 'Banner',
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    shadows: [BoxShadow(color: Colors.redAccent, blurRadius: 5)],
                  ),
                ),
              ),
              child: const Center(
                child: Text(
                  'Card with badge colors and font styles',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Material(
              elevation: 1,
              child: Container(
                height: 150,
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black26)],
                ),
                foregroundDecoration: const RotatedCornerDecoration(
                  color: Colors.redAccent,
                  geometry: BadgeGeometry(width: 50, height: 50, cornerRadius: 0),
                ),
                child: const Center(
                  child: Text(
                    'Card with badge only',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              height: 150,
              padding: const EdgeInsets.all(12),
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.redAccent,
                geometry: BadgeGeometry(width: 70, height: 70, cornerRadius: 16),
              ),
              child: const Center(
                child: Text(
                  'Card with corner radius',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 150,
              padding: const EdgeInsets.all(12),
              alignment: Alignment.bottomLeft,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.green,
                geometry: BadgeGeometry(width: 90, height: 90),
                textSpan: TextSpan(
                  text: 'DEFAULT',
                  style: TextStyle(fontSize: 17, backgroundColor: Colors.black),
                ),
              ),
              child: const Center(
                child: Text(
                  'By default baselineShift=1',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 150,
              padding: const EdgeInsets.all(12),
              alignment: Alignment.bottomLeft,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.green,
                geometry: BadgeGeometry(width: 90, height: 90),
                textSpan: TextSpan(
                  text: 'DEFAULT',
                  style: TextStyle(fontSize: 17, backgroundColor: Colors.black),
                ),
                labelInsets: LabelInsets(baselineShift: 5),
              ),
              child: const Center(
                child: Text(
                  'Use baselineShift=1',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 5,
            child: Container(
              height: 150,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.blue,
                geometry: BadgeGeometry(width: 80, height: 80),
                textSpan: TextSpan(
                  text: 'Multiline\nbadge',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
              child: const Center(
                child: Text(
                  'Card with multiple badge',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 5,
            child: Container(
              height: 150,
              padding: const EdgeInsets.all(12),
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.purpleAccent,
                geometry: BadgeGeometry(width: 70, height: 70),
              ),
              child: const Center(
                child: Text(
                  'Just empty badge on foreground',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 5,
            child: Container(
              height: 150,
              padding: const EdgeInsets.all(12),
              decoration: const RotatedCornerDecoration(
                color: Colors.orange,
                geometry: BadgeGeometry(width: 70, height: 70),
              ),
              child: const Center(child: Text('Just empty badge on background', style: TextStyle(fontSize: 17))),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 150,
              padding: const EdgeInsets.all(12),
              alignment: Alignment.bottomLeft,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.black87,
                geometry: BadgeGeometry(width: 80, height: 80),
                textSpan: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Badge\n',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.redAccent),
                    ),
                    TextSpan(
                      text: '20',
                      style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic, letterSpacing: 1, color: Colors.white),
                    ),
                  ],
                ),
                labelInsets: LabelInsets(baselineShift: 2),
              ),
              child: const Center(
                child: Text(
                  'Text Span Example',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 5,
            child: Container(
              height: 150,
              padding: const EdgeInsets.all(12),
              alignment: Alignment.bottomLeft,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.brown,
                geometry: BadgeGeometry(width: 140, height: 60),
                textSpan: TextSpan(
                  text: 'WEIRD BADGE',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              child: const Center(
                child: Text(
                  'Weird Badge',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 5,
            child: Container(
              height: 150,
              padding: const EdgeInsets.all(12),
              alignment: Alignment.bottomLeft,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.blueGrey,
                geometry: BadgeGeometry(width: 70, height: 70),
                textSpan: TextSpan(text: 'WOW', style: TextStyle(fontSize: 12)),
                labelInsets: LabelInsets(start: 10),
              ),
              child: const Center(
                child: Text(
                  'Extra space before text OR after.\nNot both!\n\nlabel inset start=8',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 5,
            child: Container(
              height: 150,
              padding: const EdgeInsets.all(12),
              alignment: Alignment.bottomLeft,
              foregroundDecoration: const RotatedCornerDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0, 0.6],
                  colors: [Colors.blue, Colors.greenAccent],
                ),
                geometry: BadgeGeometry(width: 80, height: 80),
                labelInsets: LabelInsets(baselineShift: 2),
              ),
              child:  const Center(
                child: Text(
                  'Apply any gradients instead of colors ',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 5,
            child: Container(
              height: 120,
              foregroundDecoration: const RotatedCornerDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.purpleAccent, Colors.blue],
                ),
                geometry: BadgeGeometry(width: 70, height: 70),
              ),
              child:  const Center(
                child: Text(
                  'Apply Gradient',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 5,
            child: Container(
              height: 120,
              foregroundDecoration: RotatedCornerDecoration(
                gradient: RadialGradient(
                  center: Alignment.topRight,
                  radius: 1.5,
                  stops: [0.1, 0.5],
                  colors: [Colors.redAccent, Colors.redAccent.withAlpha(0)],
                ),
                geometry: const BadgeGeometry(width: 80, height: 80),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 5,
            child: Container(
              height: 120,
              padding: const EdgeInsets.all(12),
              alignment: Alignment.bottomLeft,
              foregroundDecoration: const RotatedCornerDecoration(
                  color: Colors.yellow,
                  geometry: BadgeGeometry(width: 48, height: 48),
                  badgeShadow: BadgeShadow(color: Colors.black87, elevation: 1.5)),
              child: const Center(child: Text('Add shadow with color and elevation',  style: TextStyle(fontSize: 17),)),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 5,
            child: Container(
              height: 120,
              padding: const EdgeInsets.all(12),
              alignment: Alignment.bottomRight,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.teal,
                geometry: BadgeGeometry(width: 70, height: 70, alignment: BadgeAlignment.bottomLeft),
                textSpan: TextSpan(text: 'bottom left', style: TextStyle(fontSize: 12, letterSpacing: 0.5)),
                labelInsets: LabelInsets(baselineShift: 3),
              ),
              child: const Text('Apply badge alignment', textAlign: TextAlign.end),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 5,
            child: Container(
              height: 120,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.lightGreen,
                geometry: BadgeGeometry(width: 70, height: 70, alignment: BadgeAlignment.bottomRight),
                textSpan: TextSpan(text: 'bottom right', style: TextStyle(fontSize: 12)),
                labelInsets: LabelInsets(baselineShift: 3, start: 1),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 5,
            child: Container(
              height: 120,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.pinkAccent,
                geometry: BadgeGeometry(width: 70, height: 70, alignment: BadgeAlignment.topLeft),
                textSpan: TextSpan(text: 'Top-Left', style: TextStyle(fontSize: 13)),
                labelInsets: LabelInsets(baselineShift: 3, start: 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
