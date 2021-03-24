import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class FlutterWebView extends StatefulWidget {
  final String title;

  const FlutterWebView({Key key, this.title}) : super(key: key);

  @override
  _FlutterWebViewState createState() => _FlutterWebViewState();
}

class _FlutterWebViewState extends State<FlutterWebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, WEB_VIEW_FLUTTER_SCREEN_ROUTE);
            },
            child: const Text(
              WEB_VIEW_FLUTTER_SCREEN_TITLE,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, FLUTTER_WEBVIEW_PLUGIN_SCREEN_ROUTE);
            },
            child: const Text(
              FLUTTER_WEBVIEW_PLUGIN_SCREEN_TITLE,
            ),
          ),
        ],
      ),
    );
  }
}
