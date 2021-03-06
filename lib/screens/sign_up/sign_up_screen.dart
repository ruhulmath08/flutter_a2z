import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';

class SignUpScreen extends StatefulWidget {
  final String title;

  const SignUpScreen({Key key, this.title}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
          GestureDetector(
            onTap: () {
              //Navigator.of(context).pop();
            },
            child: Align(
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 2, color: Colors.red),
                ),
                child: const Icon(
                  Icons.cancel,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
