import 'package:flutter/material.dart';

class MyDateTimePicker extends StatefulWidget {
  final String title;

  const MyDateTimePicker({Key key, this.title}) : super(key: key);

  @override
  _MyDateTimePickerState createState() => _MyDateTimePickerState();
}

class _MyDateTimePickerState extends State<MyDateTimePicker> {
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