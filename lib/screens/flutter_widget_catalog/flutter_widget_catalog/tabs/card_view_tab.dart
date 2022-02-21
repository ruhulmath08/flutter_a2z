import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/flutter_a2z_grid_view.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/flutter_widget_catalog_model.dart';

class CardViewTab extends StatelessWidget {
  const CardViewTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<FlutterWidgetCatalogModel> models = FlutterWidgetCatalogModel.fetchAll();
    return FlutterA2zGridView(models: models);
  }
}
