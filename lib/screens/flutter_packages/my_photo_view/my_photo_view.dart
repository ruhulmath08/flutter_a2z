import 'package:flutter/material.dart';

class MyPhotoView extends StatefulWidget {
  final String title;

  const MyPhotoView({Key key, this.title}) : super(key: key);

  @override
  _MyPhotoViewState createState() => _MyPhotoViewState();
}

class _MyPhotoViewState extends State<MyPhotoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: Text(widget.title)),
    );
  }
}
