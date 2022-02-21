import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/flutter_a2z_grid_view.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/material_components_model/layout_model.dart';

class LayoutScreens extends StatelessWidget {
  final String title;
  const LayoutScreens({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<LayoutModel> models = LayoutModel.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FlutterA2zGridView(models: models),
    );
  }
}
