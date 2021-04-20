import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class FlutterRestApiCrud extends StatefulWidget {
  final String title;

  const FlutterRestApiCrud({Key key, this.title}) : super(key: key);

  @override
  _FlutterRestApiCrudState createState() => _FlutterRestApiCrudState();
}

class _FlutterRestApiCrudState extends State<FlutterRestApiCrud> {
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
