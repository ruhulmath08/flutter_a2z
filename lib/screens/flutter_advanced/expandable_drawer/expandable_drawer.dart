import 'package:flutter/material.dart';
import 'package:flutter_a2z/screens/flutter_advanced/expandable_drawer/left_drawer.dart';
import 'package:flutter_a2z/screens/flutter_advanced/expandable_drawer/right_drawer.dart';

class ExpandableDrawer extends StatefulWidget {
  final String title;

  const ExpandableDrawer({Key key, this.title}) : super(key: key);

  @override
  _ExpandableDrawerState createState() => _ExpandableDrawerState();
}

class _ExpandableDrawerState extends State<ExpandableDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clicked on'),
      ),
      drawer: MyLeftDrawer(),
      endDrawer: MyLeftDrawer(),
      body: Center(child: Text(widget.title)),
    );
  }
}