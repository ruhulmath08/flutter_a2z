import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_a2z/screens/common_widgets/common_widgets.dart';

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
        child: Icon(Icons.add),
        onPressed: () {
          CommonWidgets.showToast(context, "FloatingActionButton");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          TextButton(
            child: Text("Text Button"),
            onPressed: () {
              CommonWidgets.showToast(context, "Text Button");
            },
          ),
          TextButton.icon(
            icon: Icon(Icons.android_sharp, size: 18),
            label: Text("Text Button With Icon"),
            onPressed: () {
              CommonWidgets.showToast(context, "Text Button With Icon");
            },
          ),
          OutlineButton(
            child: Text("Outline Button"),
            onPressed: () {
              CommonWidgets.showToast(context, "Text Button With Icon");
            },
          ),
          OutlinedButton.icon(
            onPressed: () {
              CommonWidgets.showToast(context, "Outline Button With Icon");
            },
            icon: Icon(Icons.android_sharp, size: 18),
            label: Text("Outline Button With Icon"),
          ),
          ElevatedButton(
            child: Text("Contained Button"),
            onPressed: () {
              CommonWidgets.showToast(context, "Contained Button");
            },
          ),
          ElevatedButton.icon(
            label: Text("Contained Button With Icon"),
            icon: Icon(Icons.android_sharp),
            onPressed: () {
              CommonWidgets.showToast(context, "Contained Button With Icon");
            },
          ),
          IconButton(
            icon: Icon(Icons.android_sharp),
            tooltip: "This is an Icon button",
            iconSize: 30,
            onPressed: () {
              CommonWidgets.showToast(context, "Icon Button");
            },
          ),
          FlatButton(
            color: Colors.blue,
            child: Text(
              "FlatButton",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              CommonWidgets.showToast(context, "FlatButton");
            },
          ),
          RaisedButton(
            child: Text("RaisedButton"),
            onPressed: () {
              CommonWidgets.showToast(context, "RaisedButton");
            },
          ),
          RaisedButton.icon(
            onPressed: () {
              CommonWidgets.showToast(context, "RaisedButton With Icon");
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            label: Text(
              "RaisedButton With Icon",
              style: TextStyle(color: Colors.white),
            ),
            icon: Icon(
              Icons.android_sharp,
              color: Colors.white,
            ),
            textColor: Colors.white,
            splashColor: Colors.red,
            color: Colors.blue,
          ),
          MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Icon(
              Icons.phone,
              size: 24,
            ),
            padding: EdgeInsets.all(20),
            shape: CircleBorder(),
            onPressed: () {
              CommonWidgets.showToast(context, "MaterialButton");
            },
          ),
        ],
      ),
    );
  }
  //ToDo: https://morioh.com/p/bb72b518ae60
}
