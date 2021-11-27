import 'package:flutter/material.dart';

Future<void> showScaffoldMessage({
  required BuildContext context,
  required String message,
  Color color = Colors.black87,
}) async {
  final snackBar = SnackBar(content: Text(message), backgroundColor: color);
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
