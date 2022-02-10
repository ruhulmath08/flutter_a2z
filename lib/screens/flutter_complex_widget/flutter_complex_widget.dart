import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_alert_dialog.dart';
import 'package:flutter_a2z/common_widgets/common_circle.dart';
import 'package:flutter_a2z/models/flutter_complex_widget_model.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/utility/utility.dart';

class FlutterComplexWidgetScreen extends StatelessWidget {
  const FlutterComplexWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<FlutterComplexWidgetModel> allModels = FlutterComplexWidgetModel.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: const Text(flutterComplexWidgetTitle),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return GridView.builder(
            itemCount: allModels.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: orientation == Orientation.portrait ? 2 : 3, crossAxisSpacing: 4, mainAxisSpacing: 4),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Utility.navigateScreen(
                    context: context,
                    title: allModels[index].name,
                    model: allModels[index],
                  );
                },
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            commonCircle(
                              width: 35,
                              height: 35,
                              isIndexRequired: true,
                              index: index + 1,
                            ),
                            const Icon(Icons.arrow_forward_ios_sharp),
                          ],
                        ),
                        const Divider(height: 30),
                        Text(
                          allModels[index].name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            commonAlertDialog(
                              context: context,
                              title: allModels[index].name,
                              description: allModels[index].description,
                              isCancelButtonRequired: true,
                              cancelButtonTitle: 'Cancel',
                              cancelButtonPress: () => Navigator.of(context).pop(),
                            );
                          },
                          child: Text(
                            allModels[index].description,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
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
    );
  }
}
