import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/flutter_a2z_grid_view.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/styling_widget_model.dart';

class StylingWidgetsScreen extends StatelessWidget {
  final String title;
  const StylingWidgetsScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<StylingWidgetModel> models = StylingWidgetModel.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FlutterA2zGridView(models: models),
    );
  }
}
