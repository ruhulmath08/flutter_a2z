import 'package:flutter/material.dart';

class FixedHeaderTable extends StatefulWidget {
  final String title;

  const FixedHeaderTable({Key key, this.title}) : super(key: key);

  @override
  _FixedHeaderTableState createState() => _FixedHeaderTableState();
}

class _FixedHeaderTableState extends State<FixedHeaderTable> {
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
