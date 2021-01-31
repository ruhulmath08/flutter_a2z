import 'package:flutter/material.dart';

class FlutterLifecycle extends StatefulWidget {
  final String title;

  const FlutterLifecycle({Key key, this.title}) : super(key: key);

  @override
  _FlutterLifecycleState createState() => _FlutterLifecycleState();
}

class _FlutterLifecycleState extends State<FlutterLifecycle> {
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
