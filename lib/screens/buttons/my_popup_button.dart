import 'package:flutter/material.dart';

class MyPopupButton extends StatefulWidget {
  final String title;

  const MyPopupButton({Key key, this.title}) : super(key: key);

  @override
  _MyPopupButtonState createState() => _MyPopupButtonState();
}

class _MyPopupButtonState extends State<MyPopupButton> {
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
