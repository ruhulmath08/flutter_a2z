import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class DisplayPhotoView extends StatefulWidget {
  final String image;

  const DisplayPhotoView({Key? key, required this.image}) : super(key: key);

  @override
  _DisplayPhotoViewState createState() => _DisplayPhotoViewState();
}

class _DisplayPhotoViewState extends State<DisplayPhotoView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PhotoView(
          imageProvider: AssetImage(widget.image),
        ),
      ),
    );
  }
}
