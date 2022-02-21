import 'package:flutter/material.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/flutter_widget_catalog_model_details.dart';
import 'package:tree_view/tree_view.dart';

class TreeViewTab extends StatelessWidget {
  const TreeViewTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<FlutterWidgetCatalogModelDetails> models = FlutterWidgetCatalogModelDetails.fetchAll();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TreeView(
        startExpanded: true,
        children: models
            .map(
              (e) => TreeViewChild(
                parent: Card(
                  child: ListTile(
                    leading: Text(e.name),
                  ),
                ),
                children: e.subWidget
                    .map(
                      (e) => Text(e.name),
                    )
                    .toList(),
              ),
            )
            .toList(),
      ),
    );
  }
}
