import 'package:flutter/material.dart';
import 'package:flutter_a2z/models/map_details_model.dart';
import 'package:flutter_a2z/utility/utility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class MapDetailsScreen extends StatelessWidget {
  final String title;
  final Object model;

  const MapDetailsScreen({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MapDetailsModel> mapDetailsModels = MapDetailsModel.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return GridView.builder(
              itemCount: mapDetailsModels.length,
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              physics: const BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
                crossAxisSpacing: 4.w,
                mainAxisSpacing: 4.h,
              ),
              itemBuilder: (context, index) {
                final MapDetailsModel mapDetailsModel = mapDetailsModels[index];
                return InkWell(
                  onTap: () {
                    Utility.navigateScreen(context: context, title: mapDetailsModel.name, model: mapDetailsModel);
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
                          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            mapDetailsModel.icon,
                            size: 40.w,
                            color: Colors.black87,
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            mapDetailsModel.name,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                            ),
                            textAlign: TextAlign.center,
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
      ),
    );
  }
}
