import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_alert_dialog.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/flutter_widget_catalog/flutter_widget_catalog/tabs/card_view_tab.dart';
import 'package:flutter_a2z/screens/flutter_widget_catalog/flutter_widget_catalog/tabs/details_info_tab.dart';
import 'package:flutter_a2z/screens/flutter_widget_catalog/flutter_widget_catalog/tabs/tree_view_tab.dart';

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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return Scaffold(
              appBar: AppBar(
                title: const Text(flutterWidgetCatalogTitle),
                actions: [
                  IconButton(
                    onPressed: () => commonAlertDialog(
                      context: context,
                      title: 'CornerDecoration Text Info',
                      description: '''3 -> 12 \n3 means \nthis card contains 3 cards \nAnd this 3 card contains 12 cards''',
                      isOkButtonRequired: true,
                      okButtonPress: () => Navigator.pop(context),
                    ),
                    icon: const Icon(Icons.info),
                  ),
                ],
                bottom: TabBar(
                  tabs: [
                    Tab(
                      text: 'Card View',
                      icon: orientation == Orientation.portrait ? const Icon(Icons.apps_outlined) : null,
                    ),
                    Tab(
                      text: 'Tree View',
                      icon: orientation == Orientation.portrait ? const Icon(Icons.workspaces_filled) : null,
                    ),
                    Tab(
                      text: 'Details Info',
                      icon: orientation == Orientation.portrait ? const Icon(Icons.details) : null,
                    ),
                  ],
                ),
              ),
              body: const TabBarView(
                children: [
                  CardViewTab(),
                  TreeViewTab(),
                  DetailsInfoTab(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
