import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';

class ResponsiveText extends StatefulWidget {
  final String title;

  const ResponsiveText({Key key, this.title}) : super(key: key);

  @override
  _ResponsiveTextState createState() => _ResponsiveTextState();
}

class _ResponsiveTextState extends State<ResponsiveText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        children: [
          buildText(),
          const SizedBox(height: 10),
          buildTextUsingFittedBox(),
          const SizedBox(height: 10),
          buildTextUsingFittedBoxWithWidth(),
        ],
      ),
    );
  }

  Widget buildText() => const Text(
    'This is a normal text',
    style: TextStyle(fontSize: 32),
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
  );

  Widget buildTextUsingFittedBox() => Container(
    color: Colors.red,
    height: 100,
    child: const FittedBox(
      child: Text(
        'This is a normal text with FittedBox for responsiveness test',
        style: TextStyle(fontSize: 64, color: Colors.white),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    ),
  );
  Widget buildTextUsingFittedBoxWithWidth() => Container(
    color: Colors.red,
    width: MediaQuery.of(context).size.width*.5,
    child: const FittedBox(
      child: Text(
        'This is a normal text with FittedBox and Width',
        style: TextStyle(fontSize: 64, color: Colors.white),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    ),
  );
}