import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_a2z/models/home_model.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DisplayCodeScreen extends StatefulWidget {
  final String title;
  final String filePath;
  final Object? model;

  const DisplayCodeScreen({
    Key? key,
    required this.title,
    required this.filePath,
    required this.model,
  }) : super(key: key);

  @override
  _DisplayCodeScreenState createState() => _DisplayCodeScreenState();
}

class _DisplayCodeScreenState extends State<DisplayCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          if (widget.model is! HomeModel)
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return myPopupMenu.map((MyPopupMenu popupMenu) {
                  return PopupMenuItem(
                    value: popupMenu,
                    child: ListTile(
                      leading: popupMenu.icon,
                      title: Text(
                        popupMenu.title,
                      ),
                      onTap: () {
                        selectedPopUpMenu(popupMenu: popupMenu, model: widget.model);
                        Navigator.of(context).pop();
                      },
                    ),
                  );
                }).toList();
              },
            ),
        ],
      ),
      body: FutureBuilder(
        future: rootBundle.loadString(widget.filePath),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              body: SyntaxView(
                code: snapshot.data!,
                syntax: Syntax.DART,
                syntaxTheme: SyntaxTheme.dracula(),
                expanded: true,
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Row(
                children: const [Icon(Icons.error, size: 60, color: Colors.red), SizedBox(width: 5), Text('Cannot display code')],
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

const List<MyPopupMenu> myPopupMenu = <MyPopupMenu>[
  MyPopupMenu('YouTube', icon: Icon(Icons.video_collection_rounded, color: Colors.red)),
  MyPopupMenu('GitHub', icon: Icon(FontAwesomeIcons.github, color: Colors.black)),
  MyPopupMenu('Document', icon: Icon(Icons.document_scanner_outlined, color: Colors.black)),
  MyPopupMenu('WebSite', icon: Icon(FontAwesomeIcons.internetExplorer, color: Colors.blue)),
];

class MyPopupMenu {
  final String title;
  final Icon icon;

  const MyPopupMenu(this.title, {required this.icon});
}

//handle _selectedMenu click -> popup menu
void selectedPopUpMenu({required MyPopupMenu popupMenu, required dynamic model}) {
  switch (popupMenu.title) {
    case 'YouTube':
      _launchYoutubeVideo(model.youTubeLink.toString());
      break;
    case 'GitHub':
      openUrlInBrowser(model.gitLink.toString());
      break;
    case 'Document':
      openUrlInBrowser(model.packageLink.toString());
      break;
    case 'WebSite':
      openUrlInBrowser(model.documentation!.toString());
      break;
  }
}

Future<void> _launchYoutubeVideo(String _youtubeUrl) async {
  if (_youtubeUrl.isNotEmpty) {
    if (await canLaunch(_youtubeUrl)) {
      final bool _nativeAppLaunchSucceeded = await launch(
        _youtubeUrl,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!_nativeAppLaunchSucceeded) {
        await launch(_youtubeUrl, forceSafariVC: true);
      }
    }
  }
}

Future<void> openUrlInBrowser(String url) async {
  if (url.isEmpty) {
    Fluttertoast.showToast(
      msg: 'The url is empty!!!',
      backgroundColor: Colors.white,
      gravity: ToastGravity.CENTER,
      textColor: Colors.black,
      toastLength: Toast.LENGTH_LONG,
    );
  } else {
    try {
      if (await canLaunch(url)) {
        await launch(url, forceSafariVC: false);
      }
    } catch (e) {
      Fluttertoast.showToast(msg: 'Cannot open url in browser: ${e.toString()}');
    }
  }
}

Future<void> openUrlInsideApp(String url) async {
  if (url.isEmpty) {
    Fluttertoast.showToast(
      msg: 'The url is empty!!!',
      backgroundColor: Colors.white,
      gravity: ToastGravity.CENTER,
      textColor: Colors.black,
      toastLength: Toast.LENGTH_LONG,
    );
  } else {
    try {
      if (await canLaunch(url)) {
        await launch(
          url,
          forceSafariVC: true, //iOS
          forceWebView: true, //Android
          enableJavaScript: true, //Android
        );
      }
    } catch (e) {
      Fluttertoast.showToast(msg: 'Cannot open url inside app: ${e.toString()}');
    }
  }
}
