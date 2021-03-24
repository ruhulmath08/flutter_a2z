import 'package:flutter/material.dart';

class FlutterReorderableWrap extends StatefulWidget {
  final String title;

  const FlutterReorderableWrap({Key key, this.title}) : super(key: key);

  @override
  _FlutterReorderableWrapState createState() => _FlutterReorderableWrapState();
}

class _FlutterReorderableWrapState extends State<FlutterReorderableWrap> {
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