import 'package:flutter/material.dart';

class NumberWidget extends StatefulWidget {
  final int number;

  const NumberWidget({
    Key key,
    this.number,
  }) : super(key: key);

  @override
  _NumberWidgetState createState() {
    print('Number: $number CreateState');
    return _NumberWidgetState();
  }
}

class _NumberWidgetState extends State<NumberWidget> {
  int number;

  @override
  void initState() {
    super.initState();

    print('Number: ${widget.number} InitState');
    number = widget.number;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Number: ${widget.number} DidChangeDependencies');
  }

  @override
  void deactivate() {
    print('Number: ${widget.number} Deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('Number: ${widget.number} Dispose');
    super.dispose();
  }

  @override
  void didUpdateWidget(NumberWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('Number: ${widget.number} DidUpdateWidget');

    if (oldWidget.number != widget.number) {
      print('Number has changed');
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    print('Number: ${widget.number} Build');
    return Container(
      color: Colors.red,
      width: MediaQuery.of(context).size.width,
      height: 700,
      child: TextButton(
        onPressed: () {
          print('Number: ${widget.number} SetState');
          setState(() => number += 1);
        },
        child: Text(
          number.toString(),
          style: themeData.textTheme.headline1,
        ),
      ),
    );
  }
}