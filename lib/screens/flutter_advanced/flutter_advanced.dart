import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_alert_dialog.dart';
import 'package:flutter_a2z/common_widgets/common_floating_action_button_for_display_code.dart';
import 'package:flutter_a2z/models/flutter_advanced_model.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/utility/utility.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class FlutterAdvancedScreen extends StatelessWidget {
  final String title;
  final Object model;

  const FlutterAdvancedScreen({Key? key, required this.title, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<FlutterAdvancedModel> flutterAdvancedModels = FlutterAdvancedModel.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return GridView.builder(
            itemCount: flutterAdvancedModels.length,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            physics: const BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              childAspectRatio: .9,
            ),
            itemBuilder: (context, index) {
              final flutterAdvancedModel = flutterAdvancedModels[index];
              return InkWell(
                onTap: () {
                  Utility.navigateScreen(context: context, title: flutterAdvancedModel.name, model: flutterAdvancedModel);
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    foregroundDecoration: RotatedCornerDecoration(
                      color: Colors.blue,
                      geometry: const BadgeGeometry(width: 60, height: 60),
                      textSpan: TextSpan(
                        text: (index + 1).toString(),
                        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          flutterAdvancedModel.icon,
                          size: 30,
                          color: Colors.black87,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          flutterAdvancedModels[index].name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Divider(color: Colors.black),
                        InkWell(
                          onTap: () {
                            commonAlertDialog(
                              context: context,
                              title: flutterAdvancedModels[index].name,
                              description: flutterAdvancedModels[index].description,
                              isCancelButtonRequired: true,
                              cancelButtonTitle: 'Cancel',
                              cancelButtonPress: () => Navigator.of(context).pop(),
                            );
                          },
                          child: Text(
                            flutterAdvancedModels[index].description,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                            maxLines: 3,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: CommonFloatingActionButtonForDisplayCode(
        heroTag: flutterAdvancedRoute,
        screenTitle: flutterAdvancedTitle,
        filePath: flutterAdvancedFilePath,
        model: model,
      ),
    );
  }
}
