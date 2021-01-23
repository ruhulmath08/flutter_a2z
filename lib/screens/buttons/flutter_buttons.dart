import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_a2z/constants/display_code_related_link.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';
import 'package:flutter_a2z/screens/display_code/display_code.dart';

class FlutterButton extends StatefulWidget {
  final String title;

  const FlutterButton({Key key, this.title}) : super(key: key);

  @override
  _FlutterButtonState createState() => _FlutterButtonState();
}

class _FlutterButtonState extends State<FlutterButton> {
  final isSelected = <bool>[false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          textButton(),
          textButtonWithIcon(),
          outlineButton(),
          outlineButtonWithIcon(),
          elevatedButton(),
          elevatedButtonWithIcon(),
          iconButton(),
          flatButton(),
          flatButtonWithIcon(),
          raisedButton(),
          raisedButtonWithIcon(),
          materialButton(),
          flutterToggleButton(),
          flutterRadioButton(),
          flutterDropdownButton(),
          flutterCheckBox(),
          flutterPopupButton(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'display_code_add_button',
        child: const Icon(Icons.code),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DisplayCode(
                title: FLUTTER_BUTTON_SCREEN_TITLE,
                filePath: FLUTTER_BUTTON_FILE_PATH,
                githubLink: FLUTTER_BUTTON_GIT,
                webLink: FLUTTER_BUTTON_WEB,
                youTubeLink: FLUTTER_BUTTON_YOUTUBE,
                docLink: FLUTTER_BUTTON_DOC,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget textButton() {
    return TextButton(
      child: const Text('Text Button'),
      onPressed: () {
        CommonWidgets.showToast(context, 'Text Button');
      },
    );
  }

  Widget textButtonWithIcon() {
    return TextButton.icon(
      icon: const Icon(Icons.android_sharp, size: 18),
      label: const Text('Text Button With Icon'),
      onPressed: () {
        CommonWidgets.showToast(context, 'Text Button With Icon');
      },
    );
  }

  Widget outlineButton() {
    return OutlineButton(
      onPressed: () {
        CommonWidgets.showToast(context, 'Text Button With Icon');
      },
      child: const Text('Outline Button'),
    );
  }

  Widget outlineButtonWithIcon() {
    return OutlinedButton.icon(
      onPressed: () {
        CommonWidgets.showToast(context, 'Outline Button With Icon');
      },
      icon: const Icon(Icons.android_sharp, size: 18),
      label: const Text('Outline Button With Icon'),
    );
  }

  Widget elevatedButton() {
    return ElevatedButton(
      onPressed: () {
        CommonWidgets.showToast(context, 'Contained Button');
      },
      child: const Text('Contained Button'),
    );
  }

  Widget elevatedButtonWithIcon() {
    return ElevatedButton.icon(
      label: const Text('Contained Button With Icon'),
      icon: const Icon(Icons.android_sharp),
      onPressed: () {
        CommonWidgets.showToast(context, 'Contained Button With Icon');
      },
    );
  }

  Widget iconButton() {
    return IconButton(
      icon: const Icon(Icons.android_sharp),
      tooltip: 'This is an Icon button',
      iconSize: 30,
      onPressed: () {
        CommonWidgets.showToast(context, 'Icon Button');
      },
    );
  }

  Widget flatButton() {
    return FlatButton(
      color: Colors.blue,
      onPressed: () {
        CommonWidgets.showToast(context, 'FlatButton');
      },
      child: const Text(
        'FlatButton',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget flatButtonWithIcon() {
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        CommonWidgets.showToast(context, 'FlatButton With Icon');
      },
      icon: const Icon(Icons.add_road_sharp, color: Colors.white),
      label: const Text('FlatButton With Icon', style: TextStyle(color: Colors.white)),
    );
  }

  Widget raisedButton() {
    return RaisedButton(
      onPressed: () {
        CommonWidgets.showToast(context, 'RaisedButton');
      },
      child: const Text('RaisedButton'),
    );
  }

  Widget raisedButtonWithIcon() {
    return RaisedButton.icon(
      onPressed: () {
        CommonWidgets.showToast(context, 'RaisedButton With Icon');
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      label: const Text(
        'RaisedButton With Icon',
        style: TextStyle(color: Colors.white),
      ),
      icon: const Icon(
        Icons.android_sharp,
        color: Colors.white,
      ),
      textColor: Colors.white,
      splashColor: Colors.red,
      color: Colors.blue,
    );
  }

  Widget materialButton() {
    return MaterialButton(
      color: Colors.blue,
      textColor: Colors.white,
      padding: const EdgeInsets.all(20),
      shape: const CircleBorder(),
      onPressed: () {
        CommonWidgets.showToast(context, 'MaterialButton');
      },
      child: const Icon(
        Icons.phone,
        size: 24,
      ),
    );
  }

  Widget flutterToggleButton() {
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        Navigator.pushNamed(context, FLUTTER_TOGGLE_BUTTON_SCREEN_ROUTE);
      },
      icon: const Icon(Icons.toggle_on, color: Colors.white),
      label: const Text('Toggle Button', style: TextStyle(color: Colors.white)),
    );
  }

  Widget flutterRadioButton(){
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        Navigator.pushNamed(context, FLUTTER_RADIOBUTTON_SCREEN_ROUTE);
      },
      icon: const Icon(Icons.radio_button_on, color: Colors.white),
      label: const Text('Radio Button', style: TextStyle(color: Colors.white)),
    );
  }

  Widget flutterDropdownButton(){
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        Navigator.pushNamed(context, FLUTTER_DROPDOWN_BUTTON_SCREEN_ROUTE);
      },
      icon: const Icon(Icons.arrow_drop_down_circle_outlined, color: Colors.white),
      label: const Text('Dropdown Button', style: TextStyle(color: Colors.white)),
    );
  }

  Widget flutterCheckBox(){
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        Navigator.pushNamed(context, FLUTTER_CHECKBOX_SCREEN_ROUTE);
      },
      icon: const Icon(Icons.check_box, color: Colors.white),
      label: const Text('Flutter Checkbox', style: TextStyle(color: Colors.white)),
    );
  }

  Widget flutterPopupButton(){
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        Navigator.pushNamed(context, FLUTTER_POPUP_MENU_BUTTON_SCREEN_ROUTE);
      },
      icon: const Icon(Icons.more_vert_outlined, color: Colors.white),
      label: const Text('PopupMenuButton', style: TextStyle(color: Colors.white)),
    );
  }
//ToDo: https://morioh.com/p/bb72b518ae60
}
