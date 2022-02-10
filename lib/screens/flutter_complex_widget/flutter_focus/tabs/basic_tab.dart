import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';

class BasicTab extends StatelessWidget {
  const BasicTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _addressController = TextEditingController();

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: appScreenDefaultPadding,
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Focus(
                    onFocusChange: (bool value) {
                      log(value.toString());
                    },
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      controller: _nameController,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'name',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'name cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Focus(
                    onFocusChange: (bool value) {
                      log(value.toString());
                    },
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'email',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'email cannot be empty';
                        } else if (!(value.contains('.') && value.contains('@'))) {
                          return 'please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Focus(
                    onFocusChange: (bool value) {
                      log(value.toString());
                    },
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      controller: _addressController,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'address',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'address cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 45),
                    ),
                    onPressed: () {
                      //FocusManager.instance.primaryFocus?.unfocus();
                      if (_formKey.currentState!.validate()) {
                        log('validate');
                      } else {
                        log('invalid');
                      }
                    },
                    child: const Text('Save'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
