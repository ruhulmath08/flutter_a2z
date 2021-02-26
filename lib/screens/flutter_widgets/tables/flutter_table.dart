import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class FlutterTable extends StatefulWidget {
  final String title;

  const FlutterTable({Key key, this.title}) : super(key: key);

  @override
  _FlutterTableState createState() => _FlutterTableState();
}

class _FlutterTableState extends State<FlutterTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, FLUTTER_DATA_TABLE_SCREEN_ROUTE);
            },
            child: const Text(FLUTTER_DATA_TABLE_SCREEN_TITLE),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, TABLE_WITH_PAGINATION_SCREEN_ROUTE);
            },
            child: const Text(TABLE_WITH_PAGINATION_SCREEN_TITLE),
          ),
        ],
      ),
    );
  }
}

