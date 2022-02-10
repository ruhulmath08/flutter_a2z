import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class UndefinedScreen extends StatelessWidget {
  const UndefinedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(undefinedScreenTitle),
        ),
        body: const Center(
          child: Text(undefinedScreenTitle),
        ),
      ),
    );
  }
}
