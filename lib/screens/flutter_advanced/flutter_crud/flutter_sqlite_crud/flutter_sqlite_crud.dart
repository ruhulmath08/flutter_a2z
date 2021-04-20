import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class FlutterSQLiteCrud extends StatefulWidget {

final String title;

  const FlutterSQLiteCrud({Key key, this.title}) : super(key: key);
  @override
  _FlutterSQLiteCrudState createState() => _FlutterSQLiteCrudState();
}

class _FlutterSQLiteCrudState extends State<FlutterSQLiteCrud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Toast.show('Press FloatingActionButton', context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
