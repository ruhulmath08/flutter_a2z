import 'package:flutter/material.dart';

class FlutterReorderablColumn extends StatefulWidget {
  final String title;

  const FlutterReorderablColumn({Key key, this.title}) : super(key: key);

  @override
  _FlutterReorderablColumnState createState() => _FlutterReorderablColumnState();
}

class _FlutterReorderablColumnState extends State<FlutterReorderablColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: Text(widget.title)),
    );
  }
}