import 'package:flutter/material.dart';

class MyRadioButton extends StatefulWidget {
  final String title;

  const MyRadioButton({Key key, this.title}) : super(key: key);

  @override
  _MyRadioButtonState createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Text(widget.title),
      ),
    );
  }
}
