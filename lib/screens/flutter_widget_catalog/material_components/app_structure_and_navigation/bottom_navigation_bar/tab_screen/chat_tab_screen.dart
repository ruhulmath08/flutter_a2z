import 'package:flutter/material.dart';

class ChatTabScreen extends StatelessWidget {
  const ChatTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Chat',
        style: TextStyle(fontSize: 70),
      ),
    );
  }
}
