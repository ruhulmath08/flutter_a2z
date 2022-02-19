import 'package:flutter/material.dart';

class PaintingAndEffectsScreen extends StatelessWidget {
  final String title;
  const PaintingAndEffectsScreen({Key? key, required this.title}) : super(key: key);

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
