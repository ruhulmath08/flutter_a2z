import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_a2z/my_app_style/my_app_style.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:url_launcher/url_launcher.dart';

class DisplayCode extends StatefulWidget {
  final String title;
  final String filePath;
  final String githubLink;
  final String docLink;
  final String webLink;
  final String youTubeLink;

  const DisplayCode({
    Key key,
    this.title,
    this.filePath,
    this.githubLink,
    this.docLink,
    this.webLink,
    this.youTubeLink,
  }) : super(key: key);

  @override
  _DisplayCodeState createState() => _DisplayCodeState();
}

class _DisplayCodeState extends State<DisplayCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              CommonWidgets.browsLinkDialog(
                buildContext: context,
                icon: Icon(Icons.open_in_new, size: 60),
                title: "Brows GitHub Link",
                description: "Are you sure to visit GitHub link for details information?",
                url: widget.githubLink,
                yesButton: "Yes",
                noButton: "No",
              );
            },
            icon: Icon(Icons.open_in_new),
          )
        ],
      ),
      body: FutureBuilder(
        future: rootBundle.loadString(widget.filePath) ?? 'Error loading code file ${this.widget.filePath}',
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              body: SyntaxView(
                code: snapshot.data,
                syntax: Syntax.DART,
                syntaxTheme: SyntaxTheme.dracula(),
                withZoom: true,
                withLinesCount: true,
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        curve: Curves.bounceInOut,
        overlayColor: Colors.black87,
        overlayOpacity: 0.7,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
              backgroundColor: Colors.lightBlue,
              child: Icon(Icons.web),
              label: "WebSite",
              labelStyle: speedDialLabelStyle,
              onTap: () {
                //_launchURL(widget.webLink);
                CommonWidgets.browsLinkDialog(
                  buildContext: context,
                  icon: Icon(Icons.web, size: 60),
                  title: "Brows Website Link",
                  description: "Are you sure to visit Website link for details information?",
                  url: widget.webLink,
                  yesButton: "Yes",
                  noButton: "No",
                );
              }),
          SpeedDialChild(
              backgroundColor: Colors.lightBlue,
              child: Icon(Icons.play_circle_fill_rounded),
              label: "YouTube",
              labelStyle: speedDialLabelStyle,
              onTap: () {
                //_launchURL(widget.youTubeLink);
                CommonWidgets.browsLinkDialog(
                  buildContext: context,
                  icon: Icon(Icons.play_circle_fill_rounded, size: 60),
                  title: "Brows Youtube Link",
                  description: "Are you sure to visit Youtube for details information?",
                  url: widget.youTubeLink,
                  yesButton: "Yes",
                  noButton: "No",
                );
              }),
          SpeedDialChild(
              backgroundColor: Colors.lightBlue,
              child: Icon(Icons.dock),
              label: "Documentation",
              labelStyle: speedDialLabelStyle,
              onTap: () {
                CommonWidgets.browsLinkDialog(
                  buildContext: context,
                  icon: Icon(Icons.dock, size: 60),
                  title: "Brows Documentation Link",
                  description: "Are you sure to visit Documentation link for details information?",
                  url: widget.docLink,
                  yesButton: "Yes",
                  noButton: "No",
                );
              })
        ],
      ),
    );
  }
}
