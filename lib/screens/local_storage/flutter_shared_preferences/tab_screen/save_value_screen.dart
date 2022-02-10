import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/strings.dart';
import 'package:flutter_a2z/local_storage_config/shared_preferences_config/flutter_a2z_shared_preferences.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SaveValueScreen extends StatefulWidget {
  @override
  State<SaveValueScreen> createState() => _SaveValueScreenState();
}

class _SaveValueScreenState extends State<SaveValueScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              keyboardType: TextInputType.text,
              autovalidateMode: AutovalidateMode.always,
              decoration: const InputDecoration(
                filled: true,
                label: Text('Name'),
                prefixIcon: Icon(Icons.person),
              ),
              validator: (value) {
                if (value!.length >= 3) {
                  return null;
                } else {
                  return 'Name cannot be empty';
                }
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              autovalidateMode: AutovalidateMode.always,
              decoration: const InputDecoration(
                filled: true,
                label: Text('Email'),
                prefixIcon: Icon(Icons.email),
              ),
              validator: (value) {
                if (value!.length >= 6 && value.contains('@') && value.contains('.')) {
                  return null;
                } else {
                  return 'Please enter a valid email address';
                }
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _mobileController,
              keyboardType: TextInputType.phone,
              autovalidateMode: AutovalidateMode.always,
              maxLength: 11,
              decoration: const InputDecoration(
                filled: true,
                label: Text('Mobile'),
                prefixIcon: Icon(FontAwesomeIcons.mobileAlt),
              ),
              validator: (value) {
                if (value!.length == 11) {
                  return null;
                } else {
                  return 'Please enter a valid mobile number';
                }
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _addressController,
              keyboardType: TextInputType.text,
              autovalidateMode: AutovalidateMode.always,
              decoration: const InputDecoration(
                filled: true,
                label: Text('Address'),
                prefixIcon: Icon(FontAwesomeIcons.addressBook),
              ),
              validator: (value) {
                if (value!.isNotEmpty) {
                  return null;
                } else {
                  return 'Address cannot be empty';
                }
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  FlutterA2zSharedPreferences.setString(key: spName, value: _nameController.text);
                  FlutterA2zSharedPreferences.setString(key: spEmail, value: _emailController.text);
                  FlutterA2zSharedPreferences.setString(key: spMobile, value: _mobileController.text);
                  FlutterA2zSharedPreferences.setString(key: spAddress, value: _addressController.text);

                  //clear text after save data in share preferences
                  _nameController.clear();
                  _emailController.clear();
                  _mobileController.clear();
                  _addressController.clear();
                }
              },
              child: const Text('Save Value'),
            ),
            const SizedBox(height: 20),
            const Text(
              '''Save the value in SharedPreferences and display value in 'Display Data' Tab''',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
