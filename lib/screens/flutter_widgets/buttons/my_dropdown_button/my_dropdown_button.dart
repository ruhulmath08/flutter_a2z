import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';

class MyDropdownButton extends StatefulWidget {
  final String title;

  const MyDropdownButton({Key key, this.title}) : super(key: key);

  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  final _formKey = GlobalKey<FormState>();
  var gender;
  var selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
          physics: const BouncingScrollPhysics(),
          children: [
            InputDecorator(
              decoration: const InputDecoration(
                labelText: 'Simple Dropdown:',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                border: OutlineInputBorder(),
              ),
              child: DropdownButton(
                hint: const Text('Please select gender'),
                value: gender,
                items: const [
                  DropdownMenuItem(
                    value: 'male',
                    child: Text('Male'),
                  ),
                  DropdownMenuItem(
                    value: 'female',
                    child: Text('Female'),
                  ),
                  DropdownMenuItem(
                    value: 'others',
                    child: Text('Others'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 10),
            InputDecorator(
              decoration: const InputDecoration(
                labelText: 'Dropdown with validation:',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                border: OutlineInputBorder(),
              ),
              child: DropdownButtonFormField(
                hint: const Text('Please select gender'),
                validator: (value) {
                  if (value == null) {
                    return 'Please enter a valid type of business';
                  }
                },
                value: selectedGender,
                items: const [
                  DropdownMenuItem(
                    value: 'male',
                    child: Text('Male'),
                  ),
                  DropdownMenuItem(
                    value: 'female',
                    child: Text('Female'),
                  ),
                  DropdownMenuItem(
                    value: 'others',
                    child: Text('Others'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    selectedGender = value;
                  });
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                } else {}
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

//TODO: https://www.youtube.com/watch?app=desktop&v=gOqQeK_bBQk (Flutter Multi Level Dropdown)
/*
* Default dropdown
* Dropdown from API
* Dropdown from SQLite
* Multi-Level dropdown
*
* */
