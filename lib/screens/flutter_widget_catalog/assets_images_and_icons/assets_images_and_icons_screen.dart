import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/flutter_a2z_grid_view.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/assets_images_and_icons_model.dart';

class AssetsImagesAndIconsScreen extends StatelessWidget {
  final String title;
  const AssetsImagesAndIconsScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<AssetsImagesAndIconsModel> models = AssetsImagesAndIconsModel.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FlutterA2zGridView(models: models),
    );
  }
}
