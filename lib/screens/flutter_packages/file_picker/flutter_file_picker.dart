import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class FlutterFilePickerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(filePickerTitle),
      ),
      body: const Center(
        child: Text(filePickerTitle),
      ),
    );
  }
}
