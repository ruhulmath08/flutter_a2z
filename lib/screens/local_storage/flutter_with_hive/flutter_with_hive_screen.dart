import 'package:flutter/material.dart';

class FlutterWithHiveScreen extends StatelessWidget {
  final String title;
  final Object model;

  const FlutterWithHiveScreen({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);

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
