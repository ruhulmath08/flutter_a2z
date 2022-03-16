import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_floating_action_button_for_display_code.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class FlutterClipPathScreen extends StatelessWidget {
  final String title;
  final Object model;

  const FlutterClipPathScreen({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CustomClipPath2(),
              child: Container(
                color: Colors.green,
                height: 300,
                child: const Center(
                  child: Text(
                    'Clip Path - 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                color: Colors.red,
                height: 300,
                child: const Center(
                  child: Text(
                    'Clip Path - 2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CommonFloatingActionButtonForDisplayCode(
        heroTag: flutterClipPathTitle,
        screenTitle: flutterClipPathTitle,
        filePath: flutterClipPathFilePath,
        model: model,
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double w = size.width;
    final double h = size.height;

    final path = Path();

    //for square
    /*
    // (0, 0) //1. point
    path.lineTo(0, h); //2. point
    path.lineTo(w, h); //4. point
    path.lineTo(w, 0); //5. point
     */

    //for curve
    path.moveTo(0, 100);
    path.lineTo(0, h); //2. point
    path.quadraticBezierTo(
      w * 0.5, //3. point: 50% wide from point 2
      h - 100, //3. point: 100 distance from bottom
      w, //4. point
      h, //4. point
    );

    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

class CustomClipPath2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double w = size.width;
    final double h = size.height;

    final path = Path();
    //for curve
    path.lineTo(0, h); //2. point
    path.quadraticBezierTo(
      w * 0.5, //3. point: 50% wide from point 2
      h - 100, //3. point: 100 distance from bottom
      w, //4. point
      h, //4. point
    );

    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
