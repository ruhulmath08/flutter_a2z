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
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, FLUTTER_FLIP_CARD_SCREEN_ROUTE);
            },
            icon: const Icon(Icons.wifi_protected_setup),
            label: const Text('Flutter Flip Card'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, CARD_WITH_BANNER_ROUTE);
            },
            icon: const Icon(Icons.credit_card_rounded),
            label: const Text('Card With Banner'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, CARD_WITH_STACK_ROUTE);
            },
            icon: const Icon(Icons.sd_card_alert_rounded),
            label: const Text('Card With Stack'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, CARD_WITH_FOLDER_EFFECT_ROUTE);
            },
            icon: const Icon(Icons.folder),
            label: const Text('Card With Folder Effect'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, CARD_WITH_ROUNDED_CORNER_ROUTE);
            },
            icon: const Icon(Icons.rounded_corner_sharp),
            label: const Text('Rounded Corner Card'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, CARD_WITH_TOP_CIRCLE_ROUTE);
            },
            icon: const Icon(Icons.rounded_corner_sharp),
            label: const Text('Card With Top Circle'),
          )
        ],
      ),
    );
  }
}
