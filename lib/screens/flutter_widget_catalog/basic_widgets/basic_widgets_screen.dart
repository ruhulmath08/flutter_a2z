import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';
import 'package:flutter_a2z/common_widgets/card_inside_grid_view.dart';
import 'package:flutter_a2z/common_widgets/common_alert_dialog.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/basic_widget_model.dart';
import 'package:flutter_a2z/utility/utility.dart';

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
      body: GridView.builder(
        padding: appScreenDefaultPadding,
        physics: const BouncingScrollPhysics(),
        itemCount: models.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Utility.cardPerRow(context: context),
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemBuilder: (BuildContext context, int index) {
          final String name = models[index].name;
          final String details = models[index].details;
          return CardInsideGridView(
            name: name,
            details: details,
            index: index,
            onCardPress: () => Utility.navigateScreen(context: context, title: name, model: null),
            onDetailsTextPress: () => commonAlertDialog(
              context: context,
              title: name,
              description: details,
              isOkButtonRequired: true,
              okButtonPress: () => Navigator.pop(context),
            ),
          );
        },
      ),
    );
  }
}
