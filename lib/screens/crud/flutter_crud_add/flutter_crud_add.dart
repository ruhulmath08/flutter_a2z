import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';
import 'package:flutter_a2z/screens/crud/flutter_crud/flutter_crud.dart';

class FlutterCrudAdd extends StatefulWidget {
  final String title;

  FlutterCrudAdd({Key key, this.title}) : super(key: key);

  @override
  _FlutterCrudAddState createState() => _FlutterCrudAddState();
}

class _FlutterCrudAddState extends State<FlutterCrudAdd> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _controllerFullName = TextEditingController();
  TextEditingController _controllerUserName = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerAddress = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            children: [
              TextFormField(
                controller: _controllerFullName,
                decoration: InputDecoration(labelText: "Full Name", hintText: "Full Name"),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _controllerUserName,
                decoration: InputDecoration(labelText: "User Name", hintText: "User Name"),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _controllerUserName,
                decoration: InputDecoration(labelText: "Enter Password", hintText: "Enter Password"),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _controllerEmail,
                decoration: InputDecoration(labelText: "Email Address", hintText: "Email Address"),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _controllerEmail,
                decoration: InputDecoration(labelText: "Your Address", hintText: "Your Address"),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                label: Text("Save"),
                icon: Icon(Icons.save),
                onPressed: () {
                  Navigator.pushNamed(context, FLUTTER_CRUD_SCREEN_ROUTE);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
