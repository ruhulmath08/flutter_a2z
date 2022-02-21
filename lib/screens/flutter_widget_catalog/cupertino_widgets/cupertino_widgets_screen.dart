import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/flutter_a2z_grid_view.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/cupertion_widget_model.dart';

class CupertinoWidgetsScreen extends StatelessWidget {
  final String title;
  const CupertinoWidgetsScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<CupertinoWidgetModel> models = CupertinoWidgetModel.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FlutterA2zGridView(models: models),
    );
  }
}
