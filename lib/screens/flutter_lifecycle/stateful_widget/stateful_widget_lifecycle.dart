import 'package:flutter/material.dart';
import 'package:flutter_a2z/screens/flutter_lifecycle/stateful_widget/number_widget/NumberWidget.dart';

class StatefulWidgetLifecycle extends StatefulWidget {
  final String title;

  const StatefulWidgetLifecycle({Key key, this.title}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _StatefulWidgetLifecycleState createState() {
    return _StatefulWidgetLifecycleState();
  }
}

class _StatefulWidgetLifecycleState extends State<StatefulWidgetLifecycle> {
  @override
  Widget build(BuildContext context) {
    int number = 1;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        //body: NumberWidget(number: number,),
        body: ListView.separated(
          itemCount: 1,
          separatorBuilder: (context, index) => const Divider(color: Colors.black),
          itemBuilder: (context, index) {
            final number = index + 1;
            return NumberWidget(number: number);
          },
        ),
      ),
    );
  }
}
