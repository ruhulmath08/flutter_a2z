import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_a2z/screens/display_code/display_code_screen.dart';

class CommonFloatingActionButtonForDisplayCode extends StatelessWidget {
  const CommonFloatingActionButtonForDisplayCode({
    required this.heroTag,
    required this.screenTitle,
    required this.filePath,
    required this.model,
  });
  final String heroTag;
  final String screenTitle;
  final String filePath;
  final Object model;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        log(heroTag.substring(1, heroTag.length));
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DisplayCodeScreen(
              title: screenTitle,
              filePath: filePath,
              model: model,
            ),
          ),
        );
      },
      heroTag: heroTag.substring(1, heroTag.length),
      child: const Icon(Icons.code),
    );
  }
}
