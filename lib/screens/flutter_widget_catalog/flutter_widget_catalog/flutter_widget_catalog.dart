import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

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
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(flutterWidgetTitle),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.apps_outlined)),
                Tab(icon: Icon(Icons.workspaces_filled)),
              ],
            ),
          ),
          body: const Center(child: Text('tab')),
        ),
      ),
    );
  }
}
