import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/crud/flutter_crud_add/flutter_crud_add.dart';

class FlutterCrud extends StatefulWidget {
  final String title;

  FlutterCrud({Key key, this.title}) : super(key: key);

  @override
  _FlutterCrudState createState() => _FlutterCrudState();
}

class _FlutterCrudState extends State<FlutterCrud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              onTap: () {
                print("pressed on $index");
              },
              child: ListTile(
                leading: CircleAvatar(child: Text("${index + 1}")),
                title: (Text("Card-${index + 1}")),
                subtitle: (Text("Card subtitle-${index + 1}")),
                trailing: Icon(Icons.delete, color: Colors.red),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => FlutterCrudAdd(
                title: FLUTTER_CRUD_ADD_SCREEN_TITLE,
              ),
            ),
          );
        },
      ),
    );
  }
}
