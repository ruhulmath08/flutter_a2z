import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';
import 'package:flutter_a2z/constants/constants.dart';

class FlutterForm extends StatefulWidget {
  final String title;

  const FlutterForm({Key key, this.title}) : super(key: key);

  @override
  _FlutterFormState createState() => _FlutterFormState();
}

class _FlutterFormState extends State<FlutterForm> {
  final _formKey = GlobalKey<FormState>();

  String fullName = '';
  String userName = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
          children: [
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Full Name',
                hintText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Full name cannot be empty';
                } else if (value.length < 3) {
                  return 'Full name must be greater than 3 character';
                } else {
                  return null;
                }
              },
              onSaved: (value) => fullName = value,
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Username',
                hintText: 'Enter your username',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Username cannot be empty';
                } else if (value.length < 5) {
                  return 'Username must be greater than or equal to 5 character';
                } else {
                  return null;
                }
              },
              onSaved: (value) => userName = value,
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Email cannot be empty';
                } else if (!value.contains('@') || !value.contains('.')) {
                  return 'Please enter a valid email';
                } else {
                  return null;
                }
              },
              onSaved: (value) => email = value,
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Password cannot be empty';
                } else if (value.length < 6) {
                  return 'Username must be greater than or equal to 6 character';
                } else {
                  return null;
                }
              },
              onSaved: (value) => password = value,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => submit(context),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), visualDensity: const VisualDensity(vertical: 2)),
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  void submit(BuildContext context) {
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      CommonWidgets.showToast(context, 'FullName: $fullName \n Username: $userName \n Email: $email \n Password: $password');
    }
  }
}
