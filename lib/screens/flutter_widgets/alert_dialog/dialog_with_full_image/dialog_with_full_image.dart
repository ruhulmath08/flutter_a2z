import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:flutter_a2z/my_app_style/my_app_style.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class DialogWithFullImage extends StatefulWidget {
  final String title;

  const DialogWithFullImage({Key key, this.title}) : super(key: key);

  @override
  _DialogWithFullImageState createState() => _DialogWithFullImageState();
}

const List<Key> keys = [
  Key('Network'),
  Key('NetworkDialog'),
  Key('Flare'),
  Key('FlareDialog'),
  Key('Asset'),
  Key('AssetDialog'),
];

class _DialogWithFullImageState extends State<DialogWithFullImage> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        children: [
          FlatButton.icon(
            color: Colors.blue,
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => NetworkGiffyDialog(
                  key: keys[1],
                  image: Image.network(
                    "https://raw.githubusercontent.com/Shashank02051997/FancyGifDialog-Android/master/GIF's/gif14.gif",
                    fit: BoxFit.cover,
                  ),
                  entryAnimation: EntryAnimation.TOP_LEFT,
                  title: const Text(
                    'Granny Eating Chocolate',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
                  ),
                  description: const Text(
                    'This is a granny eating chocolate dialog box. This library helps you easily create fancy giffy dialog.',
                    textAlign: TextAlign.center,
                  ),
                  onOkButtonPressed: () {
                    Navigator.pop(context);
                  },
                  onCancelButtonPressed: () {
                    Navigator.pop(context);
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.gif,
              color: COLOR_WHITE,
            ),
            label: Text(
              'NetworkGiffyDialog',
              style: themeData.textTheme.button,
            ),
          ),
          FlatButton.icon(
            color: Colors.blue,
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => AssetGiffyDialog(
                  key: keys[5],
                  image: Image.asset(
                    'assets/images/ok_gif.gif',
                    fit: BoxFit.cover,
                  ),
                  title: const Text(
                    'Completed Successfully',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
                  ),
                  entryAnimation: EntryAnimation.BOTTOM_RIGHT,
                  description: const Text(
                    'This operation is completed successfully. Press "Ok", or "Cancel" button for dismiss this dialog.',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                  onOkButtonPressed: () {
                    Navigator.pop(context);
                  },
                  onCancelButtonPressed: () {
                    Navigator.pop(context);
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.more_vert_outlined,
              color: COLOR_WHITE,
            ),
            label: Text(
              'AssetGiffyDialog',
              style: themeData.textTheme.button,
            ),
          ),
        ],
      ),
    );
  }
}
