import 'package:flutter/material.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_photo_view/display_photo_view.dart';

class FlutterPhotoView extends StatefulWidget {
  final String title;
  final Object model;

  const FlutterPhotoView({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);

  @override
  _FlutterPhotoViewState createState() => _FlutterPhotoViewState();
}

class _FlutterPhotoViewState extends State<FlutterPhotoView> {
  List<String> imagesList = [
    'assets/images/nature_1.jpg',
    'assets/images/nature_2.jpg',
    'assets/images/nature_3.jpg',
    'assets/images/nature_4.jpg',
    'assets/images/nature_5.jpeg',
    'assets/images/nature_6.jpg',
    'assets/images/nature_7.jpg',
    'assets/images/nature_8.jpg',
    'assets/images/nature_9.jpeg',
    'assets/images/nature_10.jpg',
    'assets/images/nature_11.jpg',
    'assets/images/nature_12.jpeg',
    'assets/images/nature_13.jpg',
    'assets/images/nature_14.jpg',
    'assets/images/nature_15.jpg',
    'assets/images/nature_16.jpg',
    'assets/images/nature_17.jpg',
    'assets/images/nature_18.jpeg',
    'assets/images/nature_19.jpg',
    'assets/images/nature_20.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final int cardPerRow = (screenWidth / 200).round();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: imagesList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: cardPerRow),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DisplayPhotoView(image: imagesList[index]),
                  ),
                );
              },
              child: Card(
                child: Image.asset(imagesList[index], fit: BoxFit.fill),
              ),
            );
          },
        ),
      ),
    );
  }
}
