import 'package:flutter/material.dart';

class OsmDraggableMarkerScreen extends StatefulWidget {
  final String title;

  const OsmDraggableMarkerScreen({Key? key, required this.title}) : super(key: key);

  @override
  _OsmDraggableMarkerScreenState createState() => _OsmDraggableMarkerScreenState();
}

class _OsmDraggableMarkerScreenState extends State<OsmDraggableMarkerScreen> {
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
