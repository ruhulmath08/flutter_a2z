import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class DisplayCode extends StatefulWidget {
  final String title;
  final String pageName;
  final String codeGithubPath;

  DisplayCode({Key key, this.title, this.pageName, this.codeGithubPath}) : super(key: key);

  @override
  _DisplayCodeState createState() => _DisplayCodeState();
}

class _DisplayCodeState extends State<DisplayCode> {
  double scaleFactorText = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.open_in_new),
          )
        ],
      ),
      floatingActionButton: AnimatedFloatingActionButton(
        fabButtons: codePreviewActions(),
        colorStartAnimation: Colors.blue,
        colorEndAnimation: Colors.cyan,
        animatedIconData: AnimatedIcons.menu_close,
      ),
      body: Center(child: Text(widget.title)),
    );
  }

  List<Widget> codePreviewActions() {
    return <Widget>[
      //making text smaller
      FloatingActionButton(
        heroTag: "zoom_out",
        child: Icon(
          Icons.zoom_out,
          size: 32,
        ),
        tooltip: 'Zoom out',
        onPressed: () => setState(() {
          //this.scaleFactorText = max(0.8, this.scaleFactorText - 0.1);
        }),
      ),
      //making text bigger
      FloatingActionButton(
        heroTag: "zoom_in",
        child: Icon(
          Icons.zoom_in_outlined,
          size: 32,
        ),
        tooltip: 'Zoom in',
        onPressed: () => setState(() {
          //this.scaleFactorText += 0.1;
        }),
      ),
      FloatingActionButton(
        heroTag: "open_page",
        child: Icon(Icons.fit_screen),
        tooltip: 'See Demo',
        // onPressed: () => Navigator.popAndPushNamed(
        //   context,
        //   widget.pageName,
        //   arguments: ScreenArguments(widget.recipeName, widget.pageName,
        //       widget.codeFilePath, widget.codeGithubPath),
        // ),
      ),
    ];
  }

  _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}
