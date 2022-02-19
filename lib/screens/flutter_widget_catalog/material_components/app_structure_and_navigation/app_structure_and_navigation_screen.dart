import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';
import 'package:flutter_a2z/common_widgets/card_inside_grid_view.dart';
import 'package:flutter_a2z/common_widgets/common_alert_dialog.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/material_components_model/app_structure_and_navigation_model.dart';
import 'package:flutter_a2z/utility/utility.dart';

class AppStructureAndNavigationScreens extends StatelessWidget {
  final String title;
  const AppStructureAndNavigationScreens({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<AppStructureAndNavigationModel> models = AppStructureAndNavigationModel.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
            //numberOfElements: numberOfElements,
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
