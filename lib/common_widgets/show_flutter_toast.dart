import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<bool?> showFlutterToast({
  required BuildContext context,
  required String message,
  Color backgroundColor = Colors.black87,
  Color textColor = Colors.white,
  ToastGravity toastGravity = ToastGravity.CENTER,
}) {
  return Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: backgroundColor,
    textColor: textColor,
    gravity: toastGravity,
  );
}
