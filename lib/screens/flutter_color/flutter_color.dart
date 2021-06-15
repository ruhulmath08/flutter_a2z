import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';

class FlutterColor extends StatefulWidget {
  final String title;

  const FlutterColor({Key key, this.title}) : super(key: key);
  @override
  _FlutterColorState createState() => _FlutterColorState();
}

class _FlutterColorState extends State<FlutterColor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        children: [
          Container(
            height: 100,
            color: Colors.red,
            child: const Center(
              child: Text(
                'Flutter default color (red)',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 100,
            //https://www.codegrepper.com/code-examples/whatever/flutter+color+opacity
            //FF is opacity 100%
            color: const Color(0xFF0328fc),
            child: const Center(
              child: Text(
                'Hex color (F0328fc) with opacity 100',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 100,
            //we can also add # and opacity
            //80 is opacity and 03fc14 is color
            color: HexColor.fromHex('#8003fc14'),
            child: const Center(
              child: Text(
                'Color (#8003fc14) from Hex class',
                style: TextStyle(color: Colors.pinkAccent),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 100,
            //.9 is opacity
            color: const Color.fromRGBO(176, 79, 60, .9),
            child: const Center(
              child: Text(
                'Color (176, 79, 60, .9) from RGB',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 100,
            //.9 is opacity
            color: Colors.green.withOpacity(0.5),
            child: const Center(
              child: Text(
                'Apply opacity in any color -> Colors.green.withOpacity(0.5)',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 100,
            //.9 is opacity
            color: Colors.green,
            child: Center(
              child: Text(
                'Convert color to Hex value green -> "${Colors.green.toHex()}"',
                style: const TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length <= 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));

    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
