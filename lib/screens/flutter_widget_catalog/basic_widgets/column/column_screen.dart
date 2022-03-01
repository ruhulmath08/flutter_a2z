import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';

class ColumnScreen extends StatelessWidget {
  final String title;
  const ColumnScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: appScreenDefaultPadding,
          child: Column(
            children: [
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
