import 'package:flutter/material.dart';

class FlutterLayoutsScreen extends StatelessWidget {
  final String title;

  const FlutterLayoutsScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
