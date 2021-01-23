import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.all(8.0),
        children: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, FLUTTER_FLIP_CARD_SCREEN_ROUTE);
            },
            icon: const Icon(Icons.wifi_protected_setup),
            label: const Text('Flutter Flip Card'),
          )
        ],
      ),
    );
  }
}
