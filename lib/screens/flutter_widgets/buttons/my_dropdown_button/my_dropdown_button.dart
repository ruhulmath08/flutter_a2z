import 'package:flutter/material.dart';

class MyDropdownButton extends StatefulWidget {
  final String title;

  const MyDropdownButton({Key key, this.title}) : super(key: key);

  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Text(widget.title)),
    );
  }
}

//TODO: https://www.youtube.com/watch?app=desktop&v=gOqQeK_bBQk (Flutter Multi Level Dropdown)
/*
* Default dropdown
* Dropdown from API
* Dropdown from SQLite
* Multi-Level dropdown
*
* */
