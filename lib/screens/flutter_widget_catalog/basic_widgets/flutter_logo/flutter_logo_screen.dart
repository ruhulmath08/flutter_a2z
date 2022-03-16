import 'package:flutter/material.dart';

class FlutterLogoScreen extends StatelessWidget {
  final String title;
  const FlutterLogoScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: FlutterLogo(
          size: 200,
          style: FlutterLogoStyle.stacked,
        ),
      ),
    );
  }
}
