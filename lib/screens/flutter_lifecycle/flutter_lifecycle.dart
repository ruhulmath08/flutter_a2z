import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:flutter_a2z/constants/display_code_related_link.dart';
import 'package:flutter_a2z/my_app_style/my_app_style.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/display_code/display_code.dart';

class FlutterLifecycle extends StatefulWidget {
  final String title;

  const FlutterLifecycle({Key key, this.title}) : super(key: key);

  @override
  _FlutterLifecycleState createState() => _FlutterLifecycleState();
}

class _FlutterLifecycleState extends State<FlutterLifecycle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        children: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(
                context,
                STATEFUL_WIDGET_LIFECYCLE_SCREEN_ROUTE,
              );
            },
            icon: const Icon(Icons.widgets_outlined),
            label: const Text(STATEFUL_WIDGET_LIFECYCLE_SCREEN_TITLE),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: COLOR_BLUE,
        heroTag: 'display_code_flutter_lifecycle',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DisplayCode(
                title: FLUTTER_LIFECYCLE_SCREEN_TITLE,
                filePath: FLUTTER_LIFECYCLE_FILE_PATH,
                githubLink: FLUTTER_LIFECYCLE_GIT,
                webLink: FLUTTER_LIFECYCLE_WEB,
                youTubeLink: FLUTTER_LIFECYCLE_YOUTUBE,
                docLink: FLUTTER_LIFECYCLE_DOC,
              ),
            ),
          );
        },
        child: const Icon(Icons.code),
      ),
    );
  }
}
