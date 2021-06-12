import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';

class MyAnimatedTextKit extends StatefulWidget {
  final String title;

  const MyAnimatedTextKit({Key key, this.title}) : super(key: key);

  @override
  _MyAnimatedTextKitState createState() => _MyAnimatedTextKitState();
}

class _MyAnimatedTextKitState extends State<MyAnimatedTextKit> {
  List<MaterialColor> colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  TextStyle colorizeTextStyle = const TextStyle(
    fontSize: 25.0,
    fontFamily: 'Horizon',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        children: [
          const Text('Rotate'),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text(
                'Be',
                style: TextStyle(fontSize: 25.0),
              ),
              const SizedBox(width: 20.0, height: 20.0),
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.red,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText('AWESOME'),
                    RotateAnimatedText('OPTIMISTIC'),
                    RotateAnimatedText('DIFFERENT'),
                  ],
                  onTap: () {
                    print('Tap Event');
                  },
                ),
              ),
            ],
          ),
          const Divider(thickness: 1, color: Colors.black),
          const Text('Fade'),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText('do IT!'),
                  FadeAnimatedText('do it RIGHT!!'),
                  FadeAnimatedText('do it RIGHT NOW!!!'),
                ],
                onTap: () {
                  print('Tap Event');
                },
              ),
            ),
          ),
          const Divider(thickness: 1, color: Colors.black),
          const Text('Typer'),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 25.0,
                color: Colors.cyan,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('It is not enough to do your best,', speed: const Duration(milliseconds: 100)),
                  TyperAnimatedText('you must know what to do,', speed: const Duration(milliseconds: 100)),
                  TyperAnimatedText('and then do your best', speed: const Duration(milliseconds: 100)),
                  TyperAnimatedText('- W.Edwards Deming', speed: const Duration(milliseconds: 100)),
                ],
                onTap: () {
                  print('Tap Event');
                },
              ),
            ),
          ),
          const Divider(thickness: 1, color: Colors.black),
          const Text('Typewriter'),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DefaultTextStyle(
              style: const TextStyle(fontSize: 25.0, color: Colors.yellow),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('Discipline is the best tool', speed: const Duration(milliseconds: 200)),
                  TypewriterAnimatedText('Design first, then code', speed: const Duration(milliseconds: 200)),
                  TypewriterAnimatedText('Do not patch bugs out, rewrite them', speed: const Duration(milliseconds: 200)),
                  TypewriterAnimatedText('Do not test bugs out, design them out', speed: const Duration(milliseconds: 200)),
                ],
                onTap: () {
                  print('Tap Event');
                },
              ),
            ),
          ),
          const Divider(thickness: 1, color: Colors.black),
          const Text('Scale'),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DefaultTextStyle(
              style: const TextStyle(fontSize: 25.0, color: Colors.lightBlue),
              child: AnimatedTextKit(
                animatedTexts: [
                  ScaleAnimatedText('Think'),
                  ScaleAnimatedText('Build'),
                  ScaleAnimatedText('Ship'),
                ],
                onTap: () {
                  print('Tap Event');
                },
              ),
            ),
          ),
          const Divider(thickness: 1, color: Colors.black),
          const Text('Colorize'),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'Larry Page',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  'Bill Gates',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  'Steve Jobs',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
              ],
              onTap: () {
                print('Tap Event');
              },
            ),
          ),
          const Divider(thickness: 1, color: Colors.black),
          const Text('TextLiquidFill'),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: TextLiquidFill(
              text: 'LIQUIDY',
              boxBackgroundColor: Colors.redAccent,
              textStyle: const TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
              boxHeight: 70.0,
            ),
          ),
          const Divider(thickness: 1, color: Colors.black),
          const Text('Wavy'),
          const SizedBox(height: 10),
          DefaultTextStyle(
            style: const TextStyle(fontSize: 20.0, color: Colors.lightBlue),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Hello World'),
                WavyAnimatedText('Look at the waves'),
              ],
              onTap: () {
                print('Tap Event');
              },
            ),
          ),
          const Divider(thickness: 1, color: Colors.black),
          const Text('Flicker'),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 7.0,
                    color: Colors.red,
                    //offset: Offset(0, 0),
                  ),
                ],
              ),
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  FlickerAnimatedText('Flicker Frenzy'),
                  FlickerAnimatedText('Night Vibes On'),
                  FlickerAnimatedText("C'est La Vie !"),
                ],
                onTap: () {
                  print('Tap Event');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
