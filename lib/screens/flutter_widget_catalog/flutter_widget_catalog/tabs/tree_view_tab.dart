import 'package:flutter/material.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/flutter_widget_catalog_model_details.dart';

class TreeViewTab extends StatefulWidget {
  const TreeViewTab({Key? key}) : super(key: key);

  @override
  State<TreeViewTab> createState() => _TreeViewTabState();
}

class _TreeViewTabState extends State<TreeViewTab> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final List<FlutterWidgetCatalogModelDetails> models = FlutterWidgetCatalogModelDetails.fetchAll();
    return ListView(
      children: models
          .map(
            (e) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: boxDecoration(context),
              child: ExpansionTile(
                title: Text(e.name),
                children: e.subWidget.map((e) {
                  if (e.subWidget.isEmpty) {
                    return ListTile(
                      title: Text(e.name),
                    );
                  } else {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: boxDecoration(context),
                      child: ExpansionTile(
                        title: Text(e.name),
                        children: e.subWidget.map((e) {
                          if (e.subWidget.isEmpty) {
                            return ListTile(title: Text(e.name));
                          } else {
                            return Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              decoration: boxDecoration(context),
                              child: ExpansionTile(
                                title: Text(e.name),
                                children: e.subWidget.map((e) {
                                  if (e.subWidget.isEmpty) {
                                    return ListTile(title: Text(e.name));
                                  } else {
                                    return ExpansionTile(title: Text(e.name));
                                  }
                                }).toList(),
                              ),
                            );
                          }
                        }).toList(),
                      ),
                    );
                  }
                }).toList(),
              ),
            ),
          )
          .toList(),
    );
  }

  BoxDecoration boxDecoration(BuildContext context) {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      border: Border.all(color: Theme.of(context).primaryColor),
    );
  }
}
