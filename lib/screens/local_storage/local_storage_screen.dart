import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_alert_dialog.dart';
import 'package:flutter_a2z/models/local_storage_model.dart';
import 'package:flutter_a2z/utility/utility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class LocalStorageScreen extends StatelessWidget {
  final String title;

  const LocalStorageScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<LocalStorageModel> flutterAdvancedModels = LocalStorageModel.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return GridView.builder(
            itemCount: flutterAdvancedModels.length,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
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
                    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    foregroundDecoration: RotatedCornerDecoration(
                      color: Colors.blue,
                      geometry: BadgeGeometry(width: 60.w, height: 60.h),
                      textSpan: TextSpan(
                        text: (index + 1).toString(),
                        style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          flutterAdvancedModel.icon,
                          size: 30.h,
                          color: Colors.black87,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          flutterAdvancedModels[index].name,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
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
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
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
    );
  }
}
