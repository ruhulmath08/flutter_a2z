import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/flutter_a2z_grid_view.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/material_components_model/dialogs_alerts_and_panels_model.dart';

class DialogsAlertsAndPanelsScreens extends StatelessWidget {
  final String title;
  const DialogsAlertsAndPanelsScreens({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<DialogsAlertsAndPanelsModel> models = DialogsAlertsAndPanelsModel.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FlutterA2zGridView(models: models),
    );
  }
}
