import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';

class FlutterKeyDetails extends StatefulWidget {
  final String title;

  const FlutterKeyDetails({Key key, this.title}) : super(key: key);

  @override
  _FlutterKeyDetailsState createState() => _FlutterKeyDetailsState();
}

class _FlutterKeyDetailsState extends State<FlutterKeyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        physics: const BouncingScrollPhysics(),
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('button'),
          ),
        ],
      ),
    );
  }
}
