import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class FlutterCard extends StatelessWidget {
  final String title;

  const FlutterCard({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, FLUTTER_FLIP_CARD_SCREEN_ROUTE);
            },
            child: const Text(FLUTTER_FLIP_CARD_SCREEN_TITLE),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, CARD_WITH_BANNER_SCREEN_ROUTE);
            },
            child: const Text(CARD_WITH_BANNER_SCREEN_TITLE),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, CARD_WITH_STACK_SCREEN_ROUTE);
            },
            child: const Text(CARD_WITH_STACK_SCREEN_TITLE),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, CARD_WITH_FOLDER_EFFECT_SCREEN_ROUTE);
            },
            child: const Text(CARD_WITH_FOLDER_EFFECT_SCREEN_TITLE),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, CARD_WITH_ROUNDED_CORNER_SCREEN_ROUTE);
            },
            child: const Text(CARD_WITH_ROUNDED_CORNER_SCREEN_TITLE),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, CARD_WITH_TOP_CIRCLE_SCREEN_ROUTE);
            },
            child: const Text(CARD_WITH_TOP_CIRCLE_SCREEN_TITLE),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, CARD_WITH_IMAGE_AND_TEXT_SCREEN_ROUTE);
            },
            child: const Text(CARD_WITH_IMAGE_AND_TEXT_SCREEN_TITLE),
          )
        ],
      ),
    );
  }
}
