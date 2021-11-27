import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';
import 'package:flutter_a2z/common_widgets/common_alert_dialog.dart';
import 'package:flutter_a2z/common_widgets/common_circle.dart';
import 'package:flutter_a2z/models/flutter_packages_model.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/utility/utility.dart';

class FlutterPackages extends StatefulWidget {
  const FlutterPackages({Key? key}) : super(key: key);

  @override
  State<FlutterPackages> createState() => _FlutterPackagesState();
}

class _FlutterPackagesState extends State<FlutterPackages> {
  List<String> packageTypes = ['Widget', 'Animations', 'Picker', 'Shape', 'Chart'];
  UniqueKey? keyTitle;
  bool isExpanded = false;

  void expandTile() {
    setState(() {
      isExpanded = true;
      keyTitle = UniqueKey();
    });
  }

  void shrinkTitle() {
    setState(() {
      isExpanded = false;
      keyTitle = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<FlutterPackagesModel> packageModel = FlutterPackagesModel.fetchAll();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(flutterPackagesTitle),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_outlined),
            ),
          ],
        ),
        body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return GridView.builder(
              itemCount: packageModel.length,
              padding: appScreenDefaultPadding,
              physics: const BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Utility.navigateScreen(
                      context: context,
                      title: packageModel[index].name,
                      model: packageModel[index],
                    );
                  },
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          commonCircle(
                            width: 35,
                            height: 35,
                            isIndexRequired: true,
                            index: index + 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (packageModel[index].nullSafe)
                                const Icon(Icons.check_circle_outline_rounded, color: Colors.green)
                              else
                                const Icon(Icons.cancel_outlined, color: Colors.red),
                              const SizedBox(width: 5),
                              Text(
                                'Null Safety',
                                style: TextStyle(color: packageModel[index].nullSafe ? Colors.green : Colors.red),
                              ),
                            ],
                          ),
                          Text(
                            packageModel[index].name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          const Divider(color: Colors.grey, thickness: 1),
                          InkWell(
                            onTap: () {
                              commonAlertDialog(
                                context: context,
                                title: packageModel[index].name,
                                description: packageModel[index].description,
                                isCancelButtonRequired: true,
                                cancelButtonTitle: 'Cancel',
                                cancelButtonPress: () => Navigator.of(context).pop(),
                              );
                            },
                            child: Column(
                              children: [
                                Text(
                                  packageModel[index].description,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                ),
                              ],
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
        bottomNavigationBar: Card(
          margin: EdgeInsets.zero,
          elevation: 0,
          color: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Number of total package: ${packageModel.length}'),
                IconButton(
                  onPressed: () {
                    _modalBottomSheetMenu();
                  },
                  icon: const Icon(Icons.view_list),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _modalBottomSheetMenu() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (builder) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              for (String item in packageTypes)
                Card(
                  color: Colors.blue,
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(packageTypes.indexOf(item).toString(), textAlign: TextAlign.center),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          item,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
            ],
          ),
        );
      },
    );
  }
}

//https://www.fluttercampus.com/guide/33/how-to-create-stack-layout-overlapping-widgets-together-in-flutter-app/
