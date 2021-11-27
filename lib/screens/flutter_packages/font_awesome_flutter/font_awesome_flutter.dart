import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';
import 'package:flutter_a2z/common_widgets/common_floating_action_button_for_display_code.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesomeFlutterScreen extends StatefulWidget {
  final String title;
  final Object model;

  const FontAwesomeFlutterScreen({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);
  @override
  _FontAwesomeFlutterScreenState createState() => _FontAwesomeFlutterScreenState();
}

class _FontAwesomeFlutterScreenState extends State<FontAwesomeFlutterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: appScreenDefaultPadding,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Git Icon'),
                  SizedBox(width: 10),
                  Icon(FontAwesomeIcons.github),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('YouTube Icon'),
                  SizedBox(width: 10),
                  Icon(
                    FontAwesomeIcons.youtube,
                    color: Colors.red,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Internet Explorer Icon'),
                  SizedBox(width: 10),
                  Icon(FontAwesomeIcons.internetExplorer),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Facebook Icon'),
                  SizedBox(width: 10),
                  Icon(FontAwesomeIcons.facebook, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Google Icon'),
                  SizedBox(width: 10),
                  Icon(FontAwesomeIcons.google, color: Colors.blue),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CommonFloatingActionButtonForDisplayCode(
        heroTag: fontAwesomeFlutterRoute,
        screenTitle: fontAwesomeFlutterTitle,
        filePath: fontAwesomeFlutterFilePath,
        model: widget.model,
      ),
    );
  }
}
