import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/strings.dart';
import 'package:flutter_a2z/local_storage_config/shared_preferences_config/flutter_a2z_shared_preferences.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DisplayValueScreen extends StatefulWidget {
  @override
  State<DisplayValueScreen> createState() => _DisplayValueScreenState();
}

class _DisplayValueScreenState extends State<DisplayValueScreen> {
  late String? name;
  late String? email;
  late String? mobile;
  late String? address;

  @override
  void initState() {
    super.initState();
    name = FlutterA2zSharedPreferences.getString(key: spName);
    email = FlutterA2zSharedPreferences.getString(key: spEmail);
    mobile = FlutterA2zSharedPreferences.getString(key: spMobile);
    address = FlutterA2zSharedPreferences.getString(key: spAddress);
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController(text: name);
    final TextEditingController _emailController = TextEditingController(text: email);
    final TextEditingController _mobileController = TextEditingController(text: mobile);
    final TextEditingController _addressController = TextEditingController(text: address);
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          const Text(
            '''Display Value from 'SharedPreferences' ''',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          TextFormField(
            enabled: false,
            controller: _nameController,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              filled: true,
              label: Text('Name'),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _emailController,
            enabled: false,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              filled: true,
              label: Text('Email'),
              prefixIcon: Icon(Icons.email),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _mobileController,
            enabled: false,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              filled: true,
              label: Text('Mobile'),
              prefixIcon: Icon(Icons.phone),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _addressController,
            enabled: false,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              filled: true,
              label: Text('Address'),
              prefixIcon: Icon(FontAwesomeIcons.addressBook),
            ),
          ),
        ],
      ),
    );
  }
}
