import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class CommonWidgets{
  static showToast(BuildContext context, String message){
    Toast.show(
      "Pressed on: ${message}",
      context,
      gravity: Toast.CENTER,
      backgroundColor: Colors.grey,
      textColor: Colors.white,
      duration: Toast.LENGTH_LONG,
    );
  }
}