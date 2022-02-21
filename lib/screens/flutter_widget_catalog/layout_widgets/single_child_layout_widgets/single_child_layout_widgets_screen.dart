import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/flutter_a2z_grid_view.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/layout_widgets_model/single_child_layout_widgets/single_child_layout_widgets_model.dart';

class SingleChildLayoutWidgetsScreen extends StatelessWidget {
  final String title;
  const SingleChildLayoutWidgetsScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<SingleChildLayoutWidgetsModel> models = SingleChildLayoutWidgetsModel.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FlutterA2zGridView(models: models),
    );
  }
}
