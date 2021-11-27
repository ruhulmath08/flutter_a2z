import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';
import 'package:flutter_a2z/common_widgets/common_floating_action_button_for_display_code.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class RotatedCornerDecorationScreen extends StatelessWidget {
  final String title;
  final Object model;
  const RotatedCornerDecorationScreen({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        padding: appScreenDefaultPadding,
        physics: const BouncingScrollPhysics(),
        children: [
          Card(
            elevation: 5,
            margin: EdgeInsets.zero,
            child: Container(
              height: 100,
              //padding: const EdgeInsets.all(12),
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.blueGrey,
                geometry: BadgeGeometry(width: 48, height: 48),
                textSpan: TextSpan(
                  text: 'OMG',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    shadows: [BoxShadow(color: Colors.yellowAccent, blurRadius: 4)],
                  ),
                ),
              ),
              child: const Center(
                child: Text(
                  'Apply badge colors and font styles',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Material(
            elevation: 5,
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black26)],
              ),
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.redAccent,
                geometry: BadgeGeometry(width: 40, height: 40, cornerRadius: 0),
              ),
              child: const Center(
                child: Text(
                  'CornerRadius=0',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(12),
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.redAccent,
                geometry: BadgeGeometry(width: 32, height: 32, cornerRadius: 16),
              ),
              child: const Text('cornerRadius=16', style: TextStyle(fontSize: 12)),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(12),
              alignment: Alignment.bottomLeft,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.green,
                geometry: BadgeGeometry(width: 90, height: 90),
                textSpan: TextSpan(
                  text: 'DEFAULT',
                  style: TextStyle(fontSize: 10, backgroundColor: Colors.black),
                ),
              ),
              child: const Text('By default baselineShift=1'),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(12),
              alignment: Alignment.bottomLeft,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.green,
                geometry: BadgeGeometry(width: 90, height: 90),
                textSpan: TextSpan(
                  text: 'BASELINE SHIFT 0',
                  style: TextStyle(fontSize: 10, backgroundColor: Colors.black),
                ),
                labelInsets: LabelInsets(baselineShift: 0),
              ),
              child: const Text('But it can be changed'),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 100,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.green,
                geometry: BadgeGeometry(width: 90, height: 90),
                textSpan: TextSpan(
                  text: 'BASELINE SHIFT 3',
                  style: TextStyle(fontSize: 10, backgroundColor: Colors.black),
                ),
                labelInsets: LabelInsets(baselineShift: 3),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 100,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.blue,
                geometry: BadgeGeometry(width: 64, height: 64),
                textSpan: TextSpan(
                  text: 'Multiline\nbadge',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(12),
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.purpleAccent,
                geometry: BadgeGeometry(width: 48, height: 48),
              ),
              child: const Text('Just empty badge on foreground', style: TextStyle(fontSize: 12)),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(12),
              decoration: const RotatedCornerDecoration(
                color: Colors.orange,
                geometry: BadgeGeometry(width: 48, height: 48),
              ),
              child: const Text('Just empty badge on background', style: TextStyle(fontSize: 12)),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(12),
              alignment: Alignment.bottomLeft,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.black87,
                geometry: BadgeGeometry(width: 64, height: 64),
                textSpan: TextSpan(
                  children: [
                    TextSpan(
                      text: 'LOREM\n',
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.redAccent),
                    ),
                    TextSpan(
                      text: 'IPSUM',
                      style: TextStyle(fontSize: 7, fontStyle: FontStyle.italic, letterSpacing: 5, color: Colors.yellow),
                    ),
                  ],
                ),
                labelInsets: LabelInsets(baselineShift: 2),
              ),
              child: const Text('Text Span Example'),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(12),
              alignment: Alignment.bottomLeft,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.brown,
                geometry: BadgeGeometry(width: 120, height: 50),
                textSpan: TextSpan(
                  text: 'WEIRD BADGE',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(12),
              alignment: Alignment.bottomLeft,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.blueGrey,
                geometry: BadgeGeometry(width: 48, height: 48),
                textSpan: TextSpan(text: 'WOW', style: TextStyle(fontSize: 10)),
                labelInsets: LabelInsets(start: 8),
              ),
              child: const Text(
                'Extra space before text OR after.\nNot both!\n\nlabel inset start=8',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(12),
              alignment: Alignment.bottomLeft,
              foregroundDecoration: const RotatedCornerDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0, 0.6],
                  colors: [Colors.blue, Colors.greenAccent],
                ),
                geometry: BadgeGeometry(width: 48, height: 48),
                labelInsets: LabelInsets(baselineShift: 2),
              ),
              child: const Text('Apply any gradients instead of colors '),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 100,
              foregroundDecoration: const RotatedCornerDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.purpleAccent, Colors.blue],
                ),
                geometry: BadgeGeometry(width: 48, height: 48),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 100,
              foregroundDecoration: RotatedCornerDecoration(
                gradient: RadialGradient(
                  center: Alignment.topRight,
                  radius: 1.5,
                  stops: const [0.1, 0.5],
                  colors: [Colors.redAccent, Colors.redAccent.withAlpha(0)],
                ),
                geometry: const BadgeGeometry(width: 48, height: 48),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(12),
              alignment: Alignment.bottomLeft,
              foregroundDecoration: const RotatedCornerDecoration(
                  color: Colors.yellow, geometry: BadgeGeometry(width: 48, height: 48), badgeShadow: BadgeShadow(color: Colors.black87, elevation: 1.5)),
              child: const Text('Add shadow with color and elevation'),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(12),
              alignment: Alignment.bottomRight,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.teal,
                geometry: BadgeGeometry(width: 48, height: 48, alignment: BadgeAlignment.bottomLeft),
                textSpan: TextSpan(text: 'o, rly?', style: TextStyle(fontSize: 10, letterSpacing: 0.5)),
                labelInsets: LabelInsets(baselineShift: 3),
              ),
              child: const Text('Apply badge alignment', textAlign: TextAlign.end),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 100,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.lightGreen,
                geometry: BadgeGeometry(width: 48, height: 48, alignment: BadgeAlignment.bottomRight),
                textSpan: TextSpan(text: 'WHY?', style: TextStyle(fontSize: 12)),
                labelInsets: LabelInsets(baselineShift: 3, start: 1),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Container(
              height: 100,
              foregroundDecoration: const RotatedCornerDecoration(
                color: Colors.pinkAccent,
                geometry: BadgeGeometry(width: 48, height: 48, alignment: BadgeAlignment.topLeft),
                textSpan: TextSpan(text: 'OK', style: TextStyle(fontSize: 12)),
                labelInsets: LabelInsets(baselineShift: 3, start: 1),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: CommonFloatingActionButtonForDisplayCode(
        heroTag: rotatedCornerDecorationRoute,
        screenTitle: rotatedCornerDecorationTitle,
        filePath: rotatedCornerDecorationFilePath,
        model: model,
      ),
    );
  }
}
