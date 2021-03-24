import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_a2z/constants/constants.dart';

class FlutterProgressbar extends StatefulWidget {
  final String title;

  const FlutterProgressbar({Key key, this.title}) : super(key: key);

  @override
  _FlutterProgressbarState createState() => _FlutterProgressbarState();
}

class _FlutterProgressbarState extends State<FlutterProgressbar> {
  final size = 200.0;
  static const TWO_PI = 3.14 * 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        physics: const BouncingScrollPhysics(),
        children: [
          Center(
            child: TweenAnimationBuilder(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(seconds: 5),
              builder: (context, value, child) {
                int percentage = (value*100).ceil() as int;
                return Container(
                  width: size,
                  height: size,
                  child: Stack(
                    children: [
                      ShaderMask(
                        shaderCallback: (rect) {
                          return SweepGradient(
                            //startAngle: 0.0,
                            endAngle: TWO_PI,
                            stops: [value as double, value as double],
                            //center: Alignment.center,
                            colors: [Colors.blue, Colors.grey.withAlpha(55)],
                          ).createShader(rect);
                        },
                        child: Container(
                          width: size,
                          height: size,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: Image.asset('assets/images/radial_scale.png').image),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          width: size - 40,
                          height: size - 40,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              '$percentage',
                              style: const TextStyle(
                                fontSize: 40,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: TweenAnimationBuilder(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(seconds: 5),
              builder: (context, value, child) {
                int percentage = (value*100).ceil() as int;
                return Container(
                  width: size,
                  height: size,
                  child: Stack(
                    children: [
                      ShaderMask(
                        shaderCallback: (rect) {
                          return SweepGradient(
                            //startAngle: 0.0,
                            endAngle: TWO_PI,
                            stops: [value as double, value as double],
                            //center: Alignment.center,
                            colors: [Colors.blue, Colors.grey.withAlpha(55)],
                          ).createShader(rect);
                        },
                        child: Container(
                          width: size,
                          height: size,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          width: size - 40,
                          height: size - 40,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              '$percentage',
                              style: const TextStyle(
                                fontSize: 40,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      )
    );
  }
}

//Link: https://youtu.be/TiH0HYBFMMI