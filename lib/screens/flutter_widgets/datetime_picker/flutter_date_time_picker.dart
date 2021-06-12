import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class FlutterDateTimePicker extends StatefulWidget {
  final String title;

  const FlutterDateTimePicker({Key key, this.title}) : super(key: key);

  @override
  _FlutterDateTimePickerState createState() => _FlutterDateTimePickerState();
}

class _FlutterDateTimePickerState extends State<FlutterDateTimePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MY_DATE_PICKER_SCREEN_ROUTE);
            },
            child: const Text(MY_DATE_PICKER_SCREEN_TITLE),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MY_TIME_PICKER_SCREEN_ROUTE);
            },
            child: const Text(MY_TIME_PICKER_SCREEN_TITLE),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, DATETIME_PICKER_SCREEN_ROUTE);
            },
            child: const Text(DATETIME_PICKER_SCREEN_TITLE),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, DATE_RANGE_PICKER_SCREEN_ROUTE);
            },
            child: const Text(DATE_RANGE_PICKER_SCREEN_TITLE),
          ),
        ],
      ),
    );
  }
}
