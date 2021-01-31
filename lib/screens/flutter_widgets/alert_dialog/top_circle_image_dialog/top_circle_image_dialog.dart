import 'package:flutter/material.dart';

class TopCircleImageDialog extends StatefulWidget {
  final String title;

  const TopCircleImageDialog({Key key, this.title}) : super(key: key);

  @override
  _TopCircleImageDialogState createState() => _TopCircleImageDialogState();
}

class _TopCircleImageDialogState extends State<TopCircleImageDialog> {
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
