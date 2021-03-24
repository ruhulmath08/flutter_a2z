import 'package:flutter/material.dart';

class FlutterWebViewPlugin extends StatefulWidget {
  final String title;

  const FlutterWebViewPlugin({Key key, this.title}) : super(key: key);

  @override
  _FlutterWebViewPluginState createState() => _FlutterWebViewPluginState();
}

class _FlutterWebViewPluginState extends State<FlutterWebViewPlugin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: Text(widget.title)),
    );
  }
}