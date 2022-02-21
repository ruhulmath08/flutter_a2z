import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/flutter_a2z_grid_view.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/material_components_model/material_components_model.dart';

class MaterialsComponentsScreen extends StatelessWidget {
  final String title;
  const MaterialsComponentsScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MaterialComponentsModel> models = MaterialComponentsModel.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FlutterA2zGridView(models: models),
      bottomNavigationBar: Container(
        margin: EdgeInsets.zero,
        child: const Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '''Material is an adaptable system of guidelines, components, and tools that support the best practices of user interface design.''',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ),
    );
  }
}
