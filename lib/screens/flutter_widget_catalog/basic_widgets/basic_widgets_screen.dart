import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/flutter_a2z_grid_view.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/basic_widget_model.dart';

class BasicWidgetsScreen extends StatefulWidget {
  final String title;

  const BasicWidgetsScreen({Key? key, required this.title}) : super(key: key);
  @override
  _BasicWidgetsScreenState createState() => _BasicWidgetsScreenState();
}

class _BasicWidgetsScreenState extends State<BasicWidgetsScreen> {
  late final List<BasicWidgetModel> models;

  @override
  void initState() {
    super.initState();
    models = BasicWidgetModel.fetchAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FlutterA2zGridView(models: models),
    );
  }
}
