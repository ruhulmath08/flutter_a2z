import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';
import 'package:flutter_a2z/common_widgets/card_inside_grid_view.dart';
import 'package:flutter_a2z/common_widgets/common_alert_dialog.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/flutter_widget_catalog_model.dart';
import 'package:flutter_a2z/utility/utility.dart';

class CardViewTab extends StatelessWidget {
  const CardViewTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<FlutterWidgetCatalogModel> models = FlutterWidgetCatalogModel.fetchAll();
    return GridView.builder(
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
        final int? numberOfElements = models[index].numberOfElements;
        return CardInsideGridView(
          name: name,
          details: details,
          numberOfElements: numberOfElements ?? 0,
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
    );
  }
}
