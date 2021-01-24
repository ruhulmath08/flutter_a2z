import 'package:flutter/material.dart';

class DefaultDialog extends StatefulWidget {
  final String title;

 const DefaultDialog({Key key, this.title}) : super(key: key);

  @override
  _DefaultDialogState createState() => _DefaultDialogState();
}

class _DefaultDialogState extends State<DefaultDialog> {
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