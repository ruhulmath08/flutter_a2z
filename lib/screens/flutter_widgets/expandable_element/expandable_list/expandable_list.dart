import 'package:flutter/material.dart';

class MyExpandableList extends StatefulWidget {
  final String title;

  const MyExpandableList({Key key, this.title}) : super(key: key);

  @override
  _MyExpandableListState createState() => _MyExpandableListState();
}

class _MyExpandableListState extends State<MyExpandableList> {
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