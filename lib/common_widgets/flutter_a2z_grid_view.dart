import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';
import 'package:flutter_a2z/common_widgets/common_alert_dialog.dart';
import 'package:flutter_a2z/utility/utility.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class FlutterA2zGridView extends StatelessWidget {
  const FlutterA2zGridView({
    Key? key,
    required this.models,
  }) : super(key: key);

  final List<dynamic> models;

  @override
  Widget build(BuildContext context) {
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
        final String name = models[index].name.toString();
        final String details = models[index].details.toString();
        final int numberOfElements = models[index].numberOfElements as int;
        return Card(
          elevation: 5,
          child: InkWell(
            onTap: () => Utility.navigateScreen(context: context, title: name, model: null),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              foregroundDecoration: (numberOfElements > 0)
                  ? RotatedCornerDecoration(
                      color: Colors.blue,
                      geometry: const BadgeGeometry(width: 60, height: 60),
                      textSpan: TextSpan(
                        text: numberOfElements.toString(),
                        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    )
                  : null,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () => commonAlertDialog(
                        context: context,
                        title: name,
                        description: details,
                        isOkButtonRequired: true,
                        okButtonPress: () => Navigator.pop(context),
                      ),
                      child: Text(
                        details,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
