import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  double percentage; //value of the circular progress
  double newPercentage = 0.0;
  AnimationController percentageAnimationController;

  Timer _timer;
  final int _myTimerDuration = 17;
  int _myCurrentTime = 0;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
        oneSec,
            (Timer timer) => setState(() {
          if (_myCurrentTime >= _myTimerDuration) {
            timer.cancel();
          } else {
            _myCurrentTime++;
          }
        }));
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      percentage = 0.0; //initialize the value
    });

    percentageAnimationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000))
      ..addListener(() {
        setState(() {
          percentage = lerpDouble(percentage, newPercentage, percentageAnimationController.value);
        });
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Countdown')),
      body: Center(
        // ignore: sized_box_for_whitespace
        child: Container(
          height: 200,
          width: 200,
          child: CustomPaint(
            foregroundPainter: MyPainter(
              lineColor: Colors.amberAccent,
              completeColor: Colors.blueAccent,
              //completePercent: (_myTimerDuration / 100) * _myCurrentTime * 16,
              completePercent: double.parse(((_myCurrentTime / _myTimerDuration) * 100).round().toString()),
              width: 5.0,
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: RaisedButton(
                elevation: 2,
                color: Colors.red[600],
                splashColor: Colors.blueAccent,
                shape: const CircleBorder(),
                onPressed: () {
                  setState(() {
                    percentage += 15.0;
                    if (percentage > 100) {
                      percentage = 0.0;
                    }
                  });
                  startTimer();
                  percentageAnimationController.forward(from: 0.0);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '$_myCurrentTime',
                      style: const TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),

    );
  }
}

class MyPainter extends CustomPainter {
  Color lineColor;
  Color completeColor;
  double completePercent;
  double width;

  MyPainter({this.lineColor, this.completeColor, this.completePercent, this.width});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint line = Paint()
      ..color = lineColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    final Paint complete = Paint()
      ..color = completeColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    final Offset center = Offset(size.width / 2, size.height / 2);
    final double radius = min(size.width / 2, size.height / 2);

    //Start drawing in the canvas
    canvas.drawCircle(center, radius, line);

    final double arcAngle = 2 * pi * (completePercent / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2, arcAngle, false, complete);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}