import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';

class CardWithImageAndText extends StatefulWidget {
  final String title;

  const CardWithImageAndText({Key key, this.title}) : super(key: key);

  @override
  _CardWithImageAndTextState createState() => _CardWithImageAndTextState();
}

class _CardWithImageAndTextState extends State<CardWithImageAndText> {
  String aboutNaturalBeauty =
      'Nature, in the broadest sense, is the natural, physical, material world or universe. "Nature" can refer to the phenomena of the physical world, and also to life in general. The study of nature is a large, if not the only, part of science.';

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
          Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                side: BorderSide(color: Colors.blue, width: 2)),
            elevation: 5,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  ),
                  child: Image.asset('assets/images/card_image.jpg'),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Natural Beauty',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Text(
                    aboutNaturalBeauty,
                    style: const TextStyle(fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
