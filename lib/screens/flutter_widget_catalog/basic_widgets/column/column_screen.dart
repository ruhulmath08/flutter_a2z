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
      body: Padding(
        padding: appScreenDefaultPadding,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              color: Colors.red,
              width: 200,
              height: 100,
            ),
            const SizedBox(height: 5),
            Container(
              color: Colors.red,
              width: 200,
              height: 100,
            ),
            const SizedBox(height: 5),
            Container(
              color: Colors.red,
              width: 200,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
