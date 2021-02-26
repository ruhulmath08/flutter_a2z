import 'package:flutter/material.dart';

class TableWithPagination extends StatefulWidget {
  final String title;

  const TableWithPagination({Key key, this.title}) : super(key: key);

  @override
  _TableWithPaginationState createState() => _TableWithPaginationState();
}

class _TableWithPaginationState extends State<TableWithPagination> {
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