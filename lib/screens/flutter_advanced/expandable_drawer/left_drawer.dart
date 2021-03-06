import 'package:flutter/material.dart';

import 'package:flutter_a2z/common_widgets/common_widgets.dart';
import 'package:flutter_a2z/my_app_style/my_app_style.dart';

class MyLeftDrawer extends StatefulWidget {
  @override
  _MyLeftDrawerState createState() => _MyLeftDrawerState();
}

class _MyLeftDrawerState extends State<MyLeftDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            arrowColor: COLOR_BLUE,
            accountName: const Text('Md. Ruhul Amin'),
            accountEmail: const Text('ruhulmath08@gmail.com'),
            currentAccountPicture: const CircleAvatar(
              backgroundImage:
                  NetworkImage('https://avatars3.githubusercontent.com/u/19272924?s=460&u=bff8f9b0562582e2503af1fe87323e7b8bbee33d&v=4'),
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                child: InkWell(
                  onTap: () {
                    CommonWidgets.showToast(context, 'edit profile');
                    Navigator.of(context).pop();
                  },
                  child: const Icon(Icons.edit),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            //ExpansionPanelList.radio is for expanded only one element at a time
            physics: const BouncingScrollPhysics(),
            child: ExpansionPanelList.radio(
              expandedHeaderPadding: EdgeInsets.zero,
              expansionCallback: (index, isExpanded) {
                final tile = leftDrawerDate[index];
                setState(() => tile.isExpanded = isExpanded);
              },
              children: leftDrawerDate
                  .map(
                    (tile) => ExpansionPanelRadio(
                      value: tile.title,
                      canTapOnHeader: true,
                      headerBuilder: (context, isExpanded) {
                        return ListTile(
                          visualDensity: const VisualDensity(vertical: -4),
                          title: Text(
                            tile.title,
                            style: const TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          // onTap: () {
                          //   CommonWidgets.showToast(context, tile.title);
                          // },
                        );
                      }, // => buildTile(tile),
                      body: Column(
                        //children: tile.titles.map(buildTile).toList(),
                        children: tile.titles
                            .map(
                              (tile) => Container(
                                padding: const EdgeInsets.only(left: 10),
                                decoration: const BoxDecoration(
                                    border: Border(
                                      top: BorderSide(color: Colors.blue),
                                    )
                                ),
                                child: ListTile(
                                    visualDensity: const VisualDensity(vertical: -2),
                                    title: Text(
                                      tile.title,
                                      style: const TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                    onTap: () {
                                      CommonWidgets.showToast(context, tile.title);
                                    },
                                  ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTile(LeftDrawerModel tile) => ListTile(
      visualDensity: const VisualDensity(vertical: -4),
      title: Text(
        tile.title,
        style: const TextStyle(
          fontSize: 17,
        ),
      ),
      onTap: () {
        CommonWidgets.showToast(context, tile.title);
      });
}

class LeftDrawerModel {
  final String title;
  final List<LeftDrawerModel> titles;
  bool isExpanded;

  LeftDrawerModel({
    this.title,
    this.titles = const [],
    this.isExpanded = false,
  });
}

final leftDrawerDate = <LeftDrawerModel>[
  LeftDrawerModel(
    title: 'Flutter Widgets',
    titles: [
      LeftDrawerModel(title: 'Buttons'),
      LeftDrawerModel(title: 'TextField'),
      LeftDrawerModel(title: 'AlertDialog'),
      LeftDrawerModel(title: 'TabBarView'),
      LeftDrawerModel(title: 'BottomNavigationView'),
      LeftDrawerModel(title: 'Data Table'),
      LeftDrawerModel(title: 'GridView'),
      LeftDrawerModel(title: 'Card'),
      LeftDrawerModel(title: 'Navigation Drawer'),
      LeftDrawerModel(title: 'Flutter Chip'),
      LeftDrawerModel(title: 'Expandable Element'),
      LeftDrawerModel(title: 'Date-Time Picker'),
    ],
  ),
  LeftDrawerModel(
    title: 'Flutter Packages',
    titles: [
      LeftDrawerModel(title: 'Reaction Button'),
      LeftDrawerModel(title: 'Grouped List'),
      LeftDrawerModel(title: 'Rounded Corner Decoration Card'),
      LeftDrawerModel(title: 'Flip Card'),
      LeftDrawerModel(title: 'Giffy_Dialog'),
      LeftDrawerModel(title: 'Flutter Syntax View'),
      LeftDrawerModel(title: 'Flutter Speed Dial'),
    ],
  ),
  LeftDrawerModel(
    title: 'Flutter Local Storage',
    titles: [
      LeftDrawerModel(title: 'SharedPreferences'),
      LeftDrawerModel(title: 'SQLite Database'),
      LeftDrawerModel(title: 'hive'),
      LeftDrawerModel(title: 'Flutter SQL Cipher'),
    ],
  ),
  LeftDrawerModel(
    title: 'Map & Location Details',
    titles: [
      LeftDrawerModel(title: 'Google Map'),
      LeftDrawerModel(title: 'OSM Map'),
      LeftDrawerModel(title: 'Draw Map'),
      LeftDrawerModel(title: 'Location Details'),
    ],
  ),
  LeftDrawerModel(
    title: 'Firebase Details',
    titles: [
      LeftDrawerModel(title: 'Firebase Login'),
      LeftDrawerModel(title: 'Firebase CRUD'),
      LeftDrawerModel(title: 'Note App Using Firebase'),
      LeftDrawerModel(title: 'Store and Retrieve Video in Firebase'),
    ],
  ),
  LeftDrawerModel(
    title: 'Flutter Advanced',
    titles: [
      LeftDrawerModel(title: 'System Theme'),
      LeftDrawerModel(title: 'Audio Player'),
      LeftDrawerModel(title: 'Video Player'),
      LeftDrawerModel(title: 'Zoom Clone App'),
    ],
  ),
];
