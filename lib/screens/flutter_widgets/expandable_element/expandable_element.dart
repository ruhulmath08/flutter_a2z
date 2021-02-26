import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class ExpandableElement extends StatefulWidget {
  final String title;

  const ExpandableElement({Key key, this.title}) : super(key: key);

  @override
  _ExpandableElementState createState() => _ExpandableElementState();
}

class _ExpandableElementState extends State<ExpandableElement> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, EXPANSION_TILE__SCREEN_ROUTE);
            },
            child: Text(
              'ExpansionTile',
              style: themeData.textTheme.button,
            ),
          ),
        ],
      ),
    );
  }
}