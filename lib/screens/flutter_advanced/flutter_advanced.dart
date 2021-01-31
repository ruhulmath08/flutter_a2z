import 'package:flutter/material.dart';

class FlutterAdvanced extends StatefulWidget {
  final String title;

  const FlutterAdvanced({Key key, this.title}) : super(key: key);

  @override
  _FlutterAdvancedState createState() => _FlutterAdvancedState();
}

class _FlutterAdvancedState extends State<FlutterAdvanced> {
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