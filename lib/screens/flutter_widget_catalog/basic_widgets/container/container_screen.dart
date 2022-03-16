import 'package:flutter/material.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/basic_widget_model.dart';
import 'package:flutter_a2z/screens/flutter_widget_catalog/basic_widgets/container/tabs/container_demo_tab.dart';
import 'package:flutter_a2z/screens/flutter_widget_catalog/basic_widgets/container/tabs/container_details_tab.dart';
import 'package:flutter_a2z/screens/flutter_widget_catalog/basic_widgets/container/tabs/container_property_tab.dart';

class ContainerScreen extends StatelessWidget {
  final String title;
  final BasicWidgetModel model;

  const ContainerScreen({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Demo',
                icon: Icon(Icons.table_view),
              ),
              Tab(
                text: 'Property',
                icon: Icon(Icons.apps_outlined),
              ),
              Tab(
                text: 'Details',
                icon: Icon(Icons.list_outlined),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ContainerDemoTab(),
            ContainerPropertyTab(),
            ContainerDetailsTab(details: model.details),
          ],
        ),
      ),
    );
  }
}
