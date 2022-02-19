import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';
import 'package:flutter_a2z/common_widgets/card_inside_grid_view.dart';
import 'package:flutter_a2z/common_widgets/common_alert_dialog.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/animation_and_motion_model.dart';
import 'package:flutter_a2z/utility/utility.dart';

class AnimationAndMotionScreen extends StatelessWidget {
  final String title;
  const AnimationAndMotionScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<AnimationAndMotionModel> models = AnimationAndMotionModel.fetchAll();
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
      bottomNavigationBar: Container(
        margin: EdgeInsets.zero,
        child: const Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '''Material is an adaptable system of guidelines, components, and tools that support the best practices of user interface design.''',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ),
    );
  }
}
