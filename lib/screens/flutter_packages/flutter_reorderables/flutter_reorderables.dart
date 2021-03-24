import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class FlutterReOrderAbles extends StatefulWidget {
  final String title;

  const FlutterReOrderAbles({Key key, this.title}) : super(key: key);

  @override
  _FlutterFlutterReOrderAblesState createState() => _FlutterFlutterReOrderAblesState();
}

class _FlutterFlutterReOrderAblesState extends State<FlutterReOrderAbles> {
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
              Navigator.pushNamed(context, FLUTTER_REORDERABLES_SILVERLIST_ROUTE);
            },
            child: const Text(
              FLUTTER_REORDERABLES_SILVERLIST_TITLE,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, FLUTTER_REORDERABLES_TABLE_ROUTE);
            },
            child: const Text(
              FLUTTER_REORDERABLES_TABLE_TITLE,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, FLUTTER_REORDERABLES_WRAP_ROUTE);
            },
            child: const Text(
              FLUTTER_REORDERABLES_WRAP_TITLE,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, FLUTTER_NESTED_REORDERABLES_WRAP_ROUTE);
            },
            child: const Text(
              FLUTTER_NESTED_REORDERABLES_WRAP_TITLE,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, FLUTTER_REORDERABLES_COLUMN_ROUTE);
            },
            child: const Text(
              FLUTTER_REORDERABLES_COLUMN_TITLE,
            ),
          ),
        ],
      )
    );
  }
}
