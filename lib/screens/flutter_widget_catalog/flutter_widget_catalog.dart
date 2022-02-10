import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_circle.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog_model.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/utility/utility.dart';

///Display all the widget from flutter "Widget catalog" (https://docs.flutter.dev/development/ui/widgets)
/// 1. display all widget by using listView.builder()
/// 2. User can search any widget
/// 3. User can filter widget from the bottom_sheet
/// 4. In bottom_sheet we will display the group of widgets inside a card
///

class FlutterWidgetCatalogScreen extends StatefulWidget {
  const FlutterWidgetCatalogScreen({Key? key}) : super(key: key);

  @override
  State<FlutterWidgetCatalogScreen> createState() => _FlutterWidgetCatalogScreenState();
}

class _FlutterWidgetCatalogScreenState extends State<FlutterWidgetCatalogScreen> {
  final List<FlutterWidgetCatalogModel> widgetsModels = FlutterWidgetCatalogModel.fetchAll();

  @override
  Widget build(BuildContext context) {
    final List<FlutterWidgetCatalogModel> widgetModels = FlutterWidgetCatalogModel.fetchAll();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text(flutterWidgetTitle)),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: ExpansionPanelList.radio(
            dividerColor: Colors.grey,
            expandedHeaderPadding: EdgeInsets.zero,
            expansionCallback: (index, isExpanded) {
              final tile = widgetsModels[index];
              setState(() => tile.isExpanded = isExpanded);
            },
            children: widgetsModels
                .map(
                  (model) => ExpansionPanelRadio(
                    value: model.name,
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                        visualDensity: const VisualDensity(vertical: -4),
                        title: Text(
                          '${model.name} (${model.subWidget.length})',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      );
                    },
                    body: model.subWidget.isNotEmpty
                        ? Column(
                            //children: tile.titles.map(buildTile).toList(),
                            children: model.subWidget
                                .map(
                                  (innerModel) => Container(
                                    color: Colors.blue[100],
                                    //padding:
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          top: BorderSide(color: Colors.white),
                                        ),
                                      ),
                                      child: innerModel.subWidget.isEmpty
                                          ? ListTile(
                                              visualDensity: const VisualDensity(vertical: -4),
                                              title: Padding(
                                                padding: const EdgeInsets.only(left: 5),
                                                child: Row(
                                                  children: [
                                                    commonCircle(
                                                      width: 30,
                                                      height: 30,
                                                      color: Colors.white,
                                                      isIndexRequired: true,
                                                      index: model.subWidget.indexOf(innerModel) + 1,
                                                    ),
                                                    const SizedBox(width: 10),
                                                    Expanded(
                                                      child: Text(
                                                        innerModel.name,
                                                        style: const TextStyle(
                                                          fontStyle: FontStyle.italic,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              trailing: const Icon(
                                                Icons.arrow_forward_ios_sharp,
                                                color: Colors.white,
                                              ),
                                              onTap: () {
                                                log(model.name);
                                              },
                                            )
                                          : ExpansionTile(
                                              //nested ExpansionTile
                                              title: Text(
                                                '${innerModel.name}(${innerModel.subWidget.length})',
                                                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                                              ),
                                              children: innerModel.subWidget
                                                  .map(
                                                    (e) => ListTile(
                                                      visualDensity: const VisualDensity(vertical: -4),
                                                      title: Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              height: 30,
                                                              width: 30,
                                                              decoration: BoxDecoration(
                                                                shape: BoxShape.circle,
                                                                border: Border.all(width: 1, color: Colors.white),
                                                              ),
                                                              child: Center(
                                                                child: Text('${innerModel.subWidget.indexOf(e) + 1}'),
                                                              ),
                                                            ),
                                                            const SizedBox(width: 10),
                                                            Expanded(
                                                              child: Text(
                                                                e.name,
                                                                style: const TextStyle(
                                                                  fontStyle: FontStyle.italic,
                                                                  color: Colors.black,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      trailing: const Icon(
                                                        Icons.arrow_forward_ios_sharp,
                                                        color: Colors.white,
                                                      ),
                                                      onTap: () {
                                                        Utility.navigateScreen(
                                                          context: context,
                                                          title: e.name,
                                                          model: null,
                                                        );
                                                      },
                                                    ),
                                                  )
                                                  .toList(),
                                            ),
                                    ),
                                  ),
                                )
                                .toList(),
                          )
                        : const SizedBox(),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
