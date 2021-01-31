import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class MyAlertDialog extends StatefulWidget {
  final String title;

  const MyAlertDialog({Key key, this.title}) : super(key: key);

  @override
  _MyAlertDialogState createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, DEFAULT_DIALOG_SCREEN_ROUTE);
              },
              icon: const Icon(Icons.message),
              label: const Text(DEFAULT_DIALOG_SCREEN_TITLE),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, TOP_CIRCLE_IMAGE_DIALOG_SCREEN_ROUTE);
              },
              icon: const Icon(Icons.image),
              label: const Text(TOP_CIRCLE_IMAGE_DIALOG_SCREEN_TITLE),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, DIALOG_WITH_INPUT_FIELD_SCREEN_ROUTE);
              },
              icon: const Icon(Icons.input),
              label: const Text(DIALOG_WITH_INPUT_FIELD_SCREEN_TITLE),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, DIALOG_FOR_LOCATION_SCREEN_ROUTE);
              },
              icon: const Icon(Icons.location_pin),
              label: const Text(DIALOG_FOR_LOCATION_SCREEN_TITLE),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, DIALOG_WITH_FULL_IMAGE_SCREEN_ROUTE);
              },
              icon: const Icon(Icons.fullscreen),
              label: const Text(DIALOG_WITH_FULL_IMAGE_SCREEN_TITLE),
            )
          ],
        ),
      ),
    );
  }
}
