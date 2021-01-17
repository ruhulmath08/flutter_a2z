import 'package:flutter/material.dart';

class MyPopupMenuButton extends StatefulWidget {
  final String title;

  const MyPopupMenuButton({Key key, this.title}) : super(key: key);

  @override
  _MyPopupMenuButtonState createState() => _MyPopupMenuButtonState();
}

class _MyPopupMenuButtonState extends State<MyPopupMenuButton> {
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
