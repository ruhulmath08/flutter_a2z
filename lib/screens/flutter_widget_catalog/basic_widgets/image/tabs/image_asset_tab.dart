import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';

class ImageAssetTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: appScreenDefaultPadding,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/nature_8.jpg',
              height: 300,
              width: double.infinity,
              fit: BoxFit.fitHeight,
            ),
          ),
          Expanded(
            child: Text('jjj'),
          ),
        ],
      ),
    );
  }
}
