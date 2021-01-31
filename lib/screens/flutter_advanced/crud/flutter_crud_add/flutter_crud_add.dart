import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';

class FlutterCrudAdd extends StatefulWidget {
  final String title;

  FlutterCrudAdd({Key key, this.title}) : super(key: key);

  @override
  _FlutterCrudAddState createState() => _FlutterCrudAddState();
}

class _FlutterCrudAddState extends State<FlutterCrudAdd> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _controllerFullName = TextEditingController();
  final TextEditingController _controllerUserName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerAddress = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

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
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            children: [
              TextFormField(
                controller: _controllerFullName,
                decoration: const InputDecoration(labelText: 'Full Name', hintText: 'Full Name'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _controllerUserName,
                decoration: const InputDecoration(labelText: 'User Name', hintText: 'User Name'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _controllerPassword,
                decoration: const InputDecoration(labelText: 'Enter Password', hintText: 'Enter Password'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _controllerEmail,
                decoration: const InputDecoration(labelText: 'Email Address', hintText: 'Email Address'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _controllerAddress,
                decoration: const InputDecoration(labelText: 'Your Address', hintText: 'Your Address'),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                label: const Text('Save'),
                icon: const Icon(Icons.save),
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
