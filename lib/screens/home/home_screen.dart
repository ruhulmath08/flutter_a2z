import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';
import 'package:flutter_a2z/models/home_model.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/home/left_drawer.dart';
import 'package:flutter_a2z/screens/home/right_drawer.dart';
import 'package:flutter_a2z/utility/utility.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<HomeModel> homeModels = HomeModel.fetchAll();
    DateTime timeBackPressed = DateTime.now();
    return WillPopScope(
      onWillPop: () async {
        final difference = DateTime.now().difference(timeBackPressed);
        final isExitWarning = difference >= const Duration(seconds: 2);
        timeBackPressed = DateTime.now();

        if (isExitWarning) {
          //showFlutterToast(context: context, message: 'Press back again to exit');
          Fluttertoast.showToast(
            msg: 'Press back again to exit',
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.red,
            toastLength: Toast.LENGTH_SHORT,
          );
          return false;
        } else {
          Fluttertoast.cancel();
          return true;
        }
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(homeScreenTitle),
          ),
          drawer: const LeftDrawer(),
          endDrawer: const RightDrawer(),
          body: OrientationBuilder(
            builder: (BuildContext context, Orientation orientation) {
              return GridView.builder(
                itemCount: homeModels.length,
                padding: appScreenDefaultPadding,
                physics: const BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                ),
                itemBuilder: (context, index) {
                  final HomeModel homeModel = homeModels[index];
                  return InkWell(
                    onTap: () {
                      Utility.navigateScreen(context: context, title: homeModel.name, model: homeModel);
                    },
                    child: Card(
                      elevation: 5,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        foregroundDecoration: RotatedCornerDecoration(
                          color: Colors.blue,
                          geometry: const BadgeGeometry(width: 60, height: 60),
                          textSpan: TextSpan(
                            text: homeModel.numberOfElements.toString(),
                            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              homeModel.icon,
                              size: 40,
                              color: Colors.black87,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              homeModels[index].name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
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
      ),
    );
  }
}
