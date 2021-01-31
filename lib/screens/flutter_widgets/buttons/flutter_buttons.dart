import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_a2z/constants/display_code_related_link.dart';
import 'package:flutter_a2z/my_app_style/my_app_style.dart';
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
    final ThemeData themeData = Theme.of(context);

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
        backgroundColor: COLOR_BLUE,
        heroTag: 'display_code_add_button',
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
        child: const Icon(Icons.code),
      ),
    );
  }

  Widget textButton() {
    final ThemeData themeData = Theme.of(context);
    return TextButton(
      onPressed: () {
        CommonWidgets.showToast(context, 'Text Button');
      },
      child: Text(
        'Text Button',
        style: themeData.textTheme.bodyText1,
      ),
    );
  }

  Widget textButtonWithIcon() {
    final ThemeData themeData = Theme.of(context);
    return TextButton.icon(
      icon: const Icon(Icons.android_sharp, size: 18),
      label: Text(
        'Text Button With Icon',
        style: themeData.textTheme.bodyText1,
      ),
      onPressed: () {
        CommonWidgets.showToast(context, 'Text Button With Icon');
      },
    );
  }

  Widget outlineButton() {
    final ThemeData themeData = Theme.of(context);
    return OutlineButton(
      onPressed: () {
        CommonWidgets.showToast(context, 'Text Button With Icon');
      },
      child: Text(
        'Outline Button',
        style: themeData.textTheme.bodyText1,
      ),
    );
  }

  Widget outlineButtonWithIcon() {
    final ThemeData themeData = Theme.of(context);
    return OutlinedButton.icon(
      onPressed: () {
        CommonWidgets.showToast(context, 'Outline Button With Icon');
      },
      icon: const Icon(Icons.android_sharp, size: 18),
      label: Text(
        'Outline Button With Icon',
        style: themeData.textTheme.bodyText1,
      ),
    );
  }

  Widget elevatedButton() {
    final ThemeData themeData = Theme.of(context);
    return ElevatedButton(
      onPressed: () {
        CommonWidgets.showToast(context, 'Contained Button');
      },
      child: Text(
        'Contained Button',
        style: themeData.textTheme.button,
      ),
    );
  }

  Widget elevatedButtonWithIcon() {
    final ThemeData themeData = Theme.of(context);
    return ElevatedButton.icon(
      label: Text(
        'Contained Button With Icon',
        style: themeData.textTheme.button,
      ),
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
    final ThemeData themeData = Theme.of(context);
    return FlatButton(
      color: Colors.blue,
      onPressed: () {
        CommonWidgets.showToast(context, 'FlatButton');
      },
      child: Text(
        'FlatButton',
        style: themeData.textTheme.button,
      ),
    );
  }

  Widget flatButtonWithIcon() {
    final ThemeData themeData = Theme.of(context);
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        CommonWidgets.showToast(context, 'FlatButton With Icon');
      },
      icon: const Icon(
        Icons.add_road_sharp,
        color: COLOR_WHITE,
      ),
      label: Text(
        'FlatButton With Icon',
        style: themeData.textTheme.button,
      ),
    );
  }

  Widget raisedButton() {
    final ThemeData themeData = Theme.of(context);
    return RaisedButton(
      onPressed: () {
        CommonWidgets.showToast(context, 'RaisedButton');
      },
      child: Text(
        'RaisedButton',
        style: themeData.textTheme.button,
      ),
    );
  }

  Widget raisedButtonWithIcon() {
    final ThemeData themeData = Theme.of(context);
    return RaisedButton.icon(
      onPressed: () {
        CommonWidgets.showToast(context, 'RaisedButton With Icon');
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      label: Text(
        'RaisedButton With Icon',
        style: themeData.textTheme.button,
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
    final ThemeData themeData = Theme.of(context);
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        Navigator.pushNamed(
          context,
          FLUTTER_TOGGLE_BUTTON_SCREEN_ROUTE,
        );
      },
      icon: const Icon(
        Icons.toggle_on,
        color: COLOR_WHITE,
      ),
      label: Text(
        'Toggle Button',
        style: themeData.textTheme.button,
      ),
    );
  }

  Widget flutterRadioButton() {
    final ThemeData themeData = Theme.of(context);
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        Navigator.pushNamed(
          context,
          FLUTTER_RADIOBUTTON_SCREEN_ROUTE,
        );
      },
      icon: const Icon(
        Icons.radio_button_on,
        color: COLOR_WHITE,
      ),
      label: Text(
        'Radio Button',
        style: themeData.textTheme.button,
      ),
    );
  }

  Widget flutterDropdownButton() {
    final ThemeData themeData = Theme.of(context);
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        Navigator.pushNamed(
          context,
          FLUTTER_DROPDOWN_BUTTON_SCREEN_ROUTE,
        );
      },
      icon: const Icon(
        Icons.arrow_drop_down_circle_outlined,
        color: COLOR_WHITE,
      ),
      label: Text(
        'Dropdown Button',
        style: themeData.textTheme.button,
      ),
    );
  }

  Widget flutterCheckBox() {
    final ThemeData themeData = Theme.of(context);
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        Navigator.pushNamed(
          context,
          FLUTTER_CHECKBOX_SCREEN_ROUTE,
        );
      },
      icon: const Icon(
        Icons.check_box,
        color: COLOR_WHITE,
      ),
      label: Text(
        'Flutter Checkbox',
        style: themeData.textTheme.button,
      ),
    );
  }

  Widget flutterPopupButton() {
    final ThemeData themeData = Theme.of(context);
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        Navigator.pushNamed(
          context,
          FLUTTER_POPUP_MENU_BUTTON_SCREEN_ROUTE,
        );
      },
      icon: const Icon(
        Icons.more_vert_outlined,
        color: COLOR_WHITE,
      ),
      label: Text(
        'PopupMenuButton',
        style: themeData.textTheme.button,
      ),
    );
  }
//ToDo: https://morioh.com/p/bb72b518ae60
}
