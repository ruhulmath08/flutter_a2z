import 'package:flutter/material.dart';

class TabViewLayout extends StatefulWidget {
  final String title;

  const TabViewLayout({Key key, this.title}) : super(key: key);

  @override
  _TabViewLayoutState createState() => _TabViewLayoutState();
}

class _TabViewLayoutState extends State<TabViewLayout> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Text(widget.title),
      ),
    );
  }
}
