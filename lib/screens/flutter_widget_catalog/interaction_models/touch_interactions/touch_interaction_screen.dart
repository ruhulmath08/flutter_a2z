import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/flutter_a2z_grid_view.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/interaction_widget_model/touch_interactions/touch_interactions_model.dart';

class TouchInteractionsScreen extends StatelessWidget {
  final String title;
  const TouchInteractionsScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<TouchInteractionsModel> models = TouchInteractionsModel.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FlutterA2zGridView(models: models),
    );
  }
}
