import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/flutter_a2z_grid_view.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/material_components_model/app_structure_and_navigation_model.dart';

class AppStructureAndNavigationScreens extends StatelessWidget {
  final String title;
  const AppStructureAndNavigationScreens({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<AppStructureAndNavigationModel> models = AppStructureAndNavigationModel.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FlutterA2zGridView(models: models),
    );
  }
}
