import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<bool?> showFlutterToast({
  required BuildContext context,
  required String message,
  Color backgroundColor = Colors.black87,
  Color textColor = Colors.white,
  ToastGravity toastGravity = ToastGravity.CENTER,
  Toast toastDuration = Toast.LENGTH_SHORT,
}) {
  return Fluttertoast.showToast(
    msg: message,
    toastLength: toastDuration,
    backgroundColor: backgroundColor,
    textColor: textColor,
    gravity: toastGravity,
  );
}
