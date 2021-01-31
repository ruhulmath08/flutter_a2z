import 'package:flutter/material.dart';

class StatefulWidgetLifecycle extends StatefulWidget {
  final String title;

  const StatefulWidgetLifecycle({Key key, this.title}) : super(key: key);

  @override
  _StatefulWidgetLifecycleState createState() => _StatefulWidgetLifecycleState();
}

class _StatefulWidgetLifecycleState extends State<StatefulWidgetLifecycle> {
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
