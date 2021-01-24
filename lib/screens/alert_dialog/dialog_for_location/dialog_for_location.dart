import 'package:flutter/material.dart';

class DialogForLocation extends StatefulWidget {
  final String title;

  DialogForLocation({Key key, this.title}) : super(key: key);

  @override
  _DialogForLocationState createState() => _DialogForLocationState();
}

class _DialogForLocationState extends State<DialogForLocation> {
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
