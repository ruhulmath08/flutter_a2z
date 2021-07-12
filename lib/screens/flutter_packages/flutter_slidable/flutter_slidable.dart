import 'package:flutter/material.dart';

class MyFlutterSlidable extends StatefulWidget {
  final String title;

  const MyFlutterSlidable({Key key, this.title}) : super(key: key);
  @override
  _MyFlutterSlidableState createState() => _MyFlutterSlidableState();
}

class _MyFlutterSlidableState extends State<MyFlutterSlidable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title}'),
      ),
      body: Center(
        child: Text('${widget.title}'),
      ),
    );
  }
}
