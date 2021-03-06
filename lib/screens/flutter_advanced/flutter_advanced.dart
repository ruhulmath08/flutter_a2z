import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class FlutterAdvanced extends StatefulWidget {
  final String title;

  const FlutterAdvanced({Key key, this.title}) : super(key: key);

  @override
  _FlutterAdvancedState createState() => _FlutterAdvancedState();
}

class _FlutterAdvancedState extends State<FlutterAdvanced> {
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
              Navigator.pushNamed(context, FLUTTER_BIOMETRIC_AUTH_SCREEN_ROUTE);
            },
            child: const Text(
              FLUTTER_BIOMETRIC_AUTH_SCREEN_TITLE,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, EXPANDABLE_LIST_VIEW_SCREEN_ROUTE);
            },
            child: const Text(
              EXPANDABLE_LIST_VIEW_SCREEN_TITLE,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, EXPANDABLE_DRAWER_SCREEN_ROUTE);
            },
            child: const Text(
              EXPANDABLE_DRAWER_SCREEN_TITLE,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, RESPONSIVE_TEXT_SCREEN_ROUTE);
            },
            child: const Text(
              RESPONSIVE_TEXT_SCREEN_ROUTE,
            ),
          ),
        ],
      ),
    );
  }
}
