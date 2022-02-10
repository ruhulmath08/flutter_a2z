import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text(signUpScreenTitle)),
          body: const Center(
            child: Text('SIgnUp Screen'),
          ),
        ),
      ),
    );
  }
}
