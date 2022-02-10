import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  final String title;
  final Object model;

  const CameraScreen({Key? key, required this.title, required this.model}) : super(key: key);

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
