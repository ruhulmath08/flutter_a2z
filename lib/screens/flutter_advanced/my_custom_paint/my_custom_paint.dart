import 'package:flutter/material.dart';
import 'package:flutter_a2z/screens/flutter_advanced/my_custom_paint/tabs/arc_path.dart';
import 'package:flutter_a2z/screens/flutter_advanced/my_custom_paint/tabs/circle_path.dart';
import 'package:flutter_a2z/screens/flutter_advanced/my_custom_paint/tabs/image_paint_page.dart';
import 'package:flutter_a2z/screens/flutter_advanced/my_custom_paint/tabs/line_path.dart';
import 'package:flutter_a2z/screens/flutter_advanced/my_custom_paint/tabs/rectangle_path.dart';
import 'package:flutter_a2z/screens/flutter_advanced/my_custom_paint/tabs/rounded_rectangle_path.dart';
import 'package:flutter_a2z/screens/flutter_advanced/my_custom_paint/tabs/triangle_path.dart';

class MyCustomPaint extends StatefulWidget {
  final String title;

  const MyCustomPaint({Key key, this.title}) : super(key: key);

  @override
  _MyCustomPaintState createState() => _MyCustomPaintState();
}

class _MyCustomPaintState extends State<MyCustomPaint> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            isScrollable: true,
            physics: BouncingScrollPhysics(),
            tabs: [
              Tab(icon: Icon(Icons.stacked_line_chart), text: 'Line'),
              Tab(icon: Icon(Icons.crop_landscape), text: 'Rectangle'),
              Tab(icon: Icon(Icons.crop_square), text: 'Rounded Rectangle'),
              Tab(icon: Icon(Icons.circle), text: 'Circle'),
              Tab(icon: Icon(Icons.architecture), text: 'Arc'),
              Tab(icon: Icon(Icons.warning), text: 'Triangle'),
              Tab(icon: Icon(Icons.image), text: 'Image'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            LinePath(),
            RectanglePath(),
            RoundedRectanglePath(),
            CirclePath(),
            ArcPath(),
            TrianglePath(),
            ImagePaintPage(),
          ],
        ),
      ),
    );
  }
}

