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
              Navigator.pushNamed(context, FLUTTER_REACTION_SCREEN_ROUTE);
            },
            child: Text(
              'Flutter Reaction Button',
              style: themeData.textTheme.button,
            ),
          ),
        ],
      ),
    );
  }
}
