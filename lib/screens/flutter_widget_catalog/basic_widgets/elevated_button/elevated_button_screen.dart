import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';
import 'package:flutter_a2z/common_widgets/show_flutter_toast.dart';

class ElevatedButtonScreen extends StatelessWidget {
  final String title;
  const ElevatedButtonScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: appScreenDefaultPadding,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  showFlutterToast(context: context, message: 'Clicked on Elevated Button');
                },
                child: const Text('Elevated Button'),
              ),
              ElevatedButton(
                onPressed: () {
                  showFlutterToast(context: context, message: '''Clicked on "Elevated Button with width and height"''');
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 55),
                ),
                child: const Text('Elevated button with width and height'),
              ),
              ElevatedButton(
                onPressed: () {
                  showFlutterToast(context: context, message: '''Clicked on "Elevated button with color"''');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, //background
                  onPrimary: Colors.black, // foreground
                ),
                child: const Text('Elevated button with color'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  showFlutterToast(context: context, message: '''Clicked on "Elevated button with icon"''');
                },
                icon: const Icon(Icons.android),
                label: const Text('Elevated button with icon'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
