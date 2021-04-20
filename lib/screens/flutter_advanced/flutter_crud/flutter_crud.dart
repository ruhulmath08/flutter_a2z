import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class FlutterCrud extends StatefulWidget {

final String title;

  const FlutterCrud({Key key, this.title}) : super(key: key);
  @override
  _FlutterCrudState createState() => _FlutterCrudState();
}

class _FlutterCrudState extends State<FlutterCrud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, FLUTTER_REST_API_CRUD_SCREEN_ROUTE);
            },
            child: const Text(FLUTTER_REST_API_CRUD_SCREEN_TITLE),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, FLUTTER_SQLITE_CRUD_SCREEN_ROUTE);
            },
            child: const Text(FLUTTER_SQLITE_CRUD_SCREEN_TITLE),
          ),
        ],
      )
    );
  }
}
