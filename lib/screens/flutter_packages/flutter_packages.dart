import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class FlutterPackages extends StatefulWidget {
  final String title;

  const FlutterPackages({Key key, this.title}) : super(key: key);

  @override
  _FlutterPackagesState createState() => _FlutterPackagesState();
}

class _FlutterPackagesState extends State<FlutterPackages> {
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
              Navigator.pushNamed(context, FLUTTER_REACTION_SCREEN_ROUTE);
            },
            child: const Text(
              FLUTTER_REACTION_SCREEN_TITLE,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, FLUTTER_GROUPED_LIST_SCREEN_ROUTE);
            },
            child: const Text(
              FLUTTER_GROUPED_LIST_SCREEN_TITLE,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, FLUTTER_CAROUSEL_SLIDER_SCREEN_ROUTE);
            },
            child: const Text(
              FLUTTER_CAROUSEL_SLIDER_SCREEN_TITLE,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, FLUTTER_REORDERABLES_SCREEN_ROUTE);
            },
            child: const Text(
              FLUTTER_REORDERABLES_SCREEN_TITLE,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, FLUTTER_WEB_VIEW_SCREEN_ROUTE);
            },
            child: const Text(
              FLUTTER_WEB_VIEW_SCREEN_TITLE,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, FLUTTER_CHIPS_INPUT_ROUTE);
            },
            child: const Text(
              FLUTTER_CHIPS_INPUT_TITLE,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, ANIMATED_TEXT_KIT_ROUTE);
            },
            child: const Text(
              ANIMATED_TEXT_KIT_TITLE,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, FLUTTER_SLIDABLE_ROUTE);
            },
            child: const Text(
              FLUTTER_SLIDABLE_TITLE,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, CONVERT_JSON_TO_OBJECT_ROUTE);
            },
            child: const Text(
              CONVERT_JSON_TO_OBJECT_TITLE,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MY_PHOTO_VIEW_ROUTE);
            },
            child: const Text(
              MY_PHOTO_VIEW_TITLE,
            ),
          ),
        ],
      ),
    );
  }
}
