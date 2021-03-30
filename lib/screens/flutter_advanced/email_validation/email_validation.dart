import 'package:flutter/material.dart';

class MyEmailValidation extends StatelessWidget {
  final String title;

  const MyEmailValidation({Key key, this.title}) : super(key: key);

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