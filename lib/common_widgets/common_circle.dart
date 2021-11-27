import 'package:flutter/material.dart';

Widget commonCircle({
  required double width,
  required double height,
  Color? color,
  required bool isIndexRequired,
  int? index,
}) {
  return Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: color ?? Colors.blue),
    ),
    child: isIndexRequired ? Center(child: Text(index.toString())) : const SizedBox(),
  );
}
