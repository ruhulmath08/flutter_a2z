import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/display_code/display_code.dart';

class MyToggleButton extends StatefulWidget {
  final String title;

  const MyToggleButton({Key key, this.title}) : super(key: key);

  @override
  _MyToggleButtonState createState() => _MyToggleButtonState();
}

class _MyToggleButtonState extends State<MyToggleButton> {
  List list = [FLUTTER_TOGGLE_BUTTON__SCREEN_TITLE, "https://pub.dev/packages/url_launcher"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DisplayCode(
                title: FLUTTER_TOGGLE_BUTTON__SCREEN_TITLE,
                codeGithubPath: ,
              ),
            ),
          );
        },
        child: Icon(Icons.code),
      ),
    );
  }
}
