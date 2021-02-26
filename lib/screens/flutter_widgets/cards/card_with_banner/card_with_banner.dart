import 'package:flutter/material.dart';

class CardWithBanner extends StatefulWidget {
  final String title;

  const CardWithBanner({Key key, this.title}) : super(key: key);

  @override
  _CardWithBannerState createState() => _CardWithBannerState();
}

class _CardWithBannerState extends State<CardWithBanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ClipRect(
            child: Container(
              margin: const EdgeInsets.all(0.0),
              height: 100,
              color: Colors.blue,
              child: const Banner(
                message: 'Banner',
                textStyle: TextStyle(fontWeight: FontWeight.bold),
                location: BannerLocation.topEnd,
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Flutter Card With Banner',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
