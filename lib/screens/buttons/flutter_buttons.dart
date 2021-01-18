import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';

class FlutterButton extends StatefulWidget {
  final String title;

  const FlutterButton({Key key, this.title}) : super(key: key);

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
      floatingActionButton: FloatingActionButton(
        heroTag: "add_button",
        child: Icon(Icons.add),
        onPressed: () {
          CommonWidgets.showToast(context, "FloatingActionButton");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
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
    );
  }

  Widget textButton() {
    return TextButton(
      child: const Text("Text Button"),
      onPressed: () {
        CommonWidgets.showToast(context, "Text Button");
      },
    );
  }

  Widget textButtonWithIcon() {
    return TextButton.icon(
      icon: const Icon(Icons.android_sharp, size: 18),
      label: const Text("Text Button With Icon"),
      onPressed: () {
        CommonWidgets.showToast(context, "Text Button With Icon");
      },
    );
  }

  Widget outlineButton() {
    return OutlineButton(
      child: const Text("Outline Button"),
      onPressed: () {
        CommonWidgets.showToast(context, "Text Button With Icon");
      },
    );
  }

  Widget outlineButtonWithIcon() {
    return OutlinedButton.icon(
      onPressed: () {
        CommonWidgets.showToast(context, "Outline Button With Icon");
      },
      icon: const Icon(Icons.android_sharp, size: 18),
      label: const Text("Outline Button With Icon"),
    );
  }

  Widget elevatedButton() {
    return ElevatedButton(
      child: Text("Contained Button"),
      onPressed: () {
        CommonWidgets.showToast(context, "Contained Button");
      },
    );
  }

  Widget elevatedButtonWithIcon() {
    return ElevatedButton.icon(
      label: const Text("Contained Button With Icon"),
      icon: const Icon(Icons.android_sharp),
      onPressed: () {
        CommonWidgets.showToast(context, "Contained Button With Icon");
      },
    );
  }

  Widget iconButton() {
    return IconButton(
      icon: const Icon(Icons.android_sharp),
      tooltip: "This is an Icon button",
      iconSize: 30,
      onPressed: () {
        CommonWidgets.showToast(context, "Icon Button");
      },
    );
  }

  Widget flatButton() {
    return FlatButton(
      color: Colors.blue,
      child: const Text(
        "FlatButton",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        CommonWidgets.showToast(context, "FlatButton");
      },
    );
  }

  Widget flatButtonWithIcon() {
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        CommonWidgets.showToast(context, "FlatButton With Icon");
      },
      icon: const Icon(Icons.add_road_sharp, color: Colors.white),
      label: const Text("FlatButton With Icon", style: TextStyle(color: Colors.white)),
    );
  }

  Widget raisedButton() {
    return RaisedButton(
      child: const Text("RaisedButton"),
      onPressed: () {
        CommonWidgets.showToast(context, "RaisedButton");
      },
    );
  }

  Widget raisedButtonWithIcon() {
    return RaisedButton.icon(
      onPressed: () {
        CommonWidgets.showToast(context, "RaisedButton With Icon");
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      label: const Text(
        "RaisedButton With Icon",
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
      child: const Icon(
        Icons.phone,
        size: 24,
      ),
      padding: EdgeInsets.all(20),
      shape: CircleBorder(),
      onPressed: () {
        CommonWidgets.showToast(context, "MaterialButton");
      },
    );
  }

  Widget flutterToggleButton() {
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        Navigator.pushNamed(context, FLUTTER_TOGGLE_BUTTON_SCREEN_ROUTE);
      },
      icon: const Icon(Icons.toggle_on, color: Colors.white),
      label: const Text("Toggle Button", style: TextStyle(color: Colors.white)),
    );
  }

  Widget flutterRadioButton(){
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        Navigator.pushNamed(context, FLUTTER_RADIOBUTTON_SCREEN_ROUTE);
      },
      icon: const Icon(Icons.radio_button_on, color: Colors.white),
      label: const Text("Radio Button", style: TextStyle(color: Colors.white)),
    );
  }

  Widget flutterDropdownButton(){
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        Navigator.pushNamed(context, FLUTTER_DROPDOWN_BUTTON_SCREEN_ROUTE);
      },
      icon: const Icon(Icons.arrow_drop_down_circle_outlined, color: Colors.white),
      label: const Text("Dropdown Button", style: TextStyle(color: Colors.white)),
    );
  }

  Widget flutterCheckBox(){
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        Navigator.pushNamed(context, FLUTTER_CHECKBOX_SCREEN_ROUTE);
      },
      icon: const Icon(Icons.check_box, color: Colors.white),
      label: const Text("Flutter Checkbox", style: TextStyle(color: Colors.white)),
    );
  }

  Widget flutterPopupButton(){
    return FlatButton.icon(
      color: Colors.blue,
      onPressed: () {
        Navigator.pushNamed(context, FLUTTER_POPUP_MENU_BUTTON_SCREEN_ROUTE);
      },
      icon: const Icon(Icons.more_vert_outlined, color: Colors.white),
      label: const Text("PopupMenuButton", style: TextStyle(color: Colors.white)),
    );
  }
//ToDo: https://morioh.com/p/bb72b518ae60
}
