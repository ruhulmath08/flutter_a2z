import 'package:flutter/material.dart';

class FlutterAlignmentListModel {
  Alignment alignment;
  int index;

  FlutterAlignmentListModel({
    required this.alignment,
    required this.index,
  });
}

final flutterAlignmentListModelData = <FlutterAlignmentListModel>[
  FlutterAlignmentListModel(
    alignment: Alignment.center,
    index: 1,
  ),
  FlutterAlignmentListModel(
    alignment: Alignment.centerLeft,
    index: 2,
  ),
  FlutterAlignmentListModel(
    alignment: Alignment.centerRight,
    index: 3,
  ),
  FlutterAlignmentListModel(
    alignment: Alignment.topLeft,
    index: 4,
  ),
  FlutterAlignmentListModel(
    alignment: Alignment.topRight,
    index: 5,
  ),
  FlutterAlignmentListModel(
    alignment: Alignment.topCenter,
    index: 6,
  ),
  FlutterAlignmentListModel(
    alignment: Alignment.bottomLeft,
    index: 7,
  ),
  FlutterAlignmentListModel(
    alignment: Alignment.bottomRight,
    index: 8,
  ),
  FlutterAlignmentListModel(
    alignment: Alignment.bottomCenter,
    index: 9,
  ),
];
