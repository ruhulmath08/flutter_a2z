import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_floating_action_button_for_display_code.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/flutter_packages/curved_navigation_bar/pages/favourite_page.dart';
import 'package:flutter_a2z/screens/flutter_packages/curved_navigation_bar/pages/home_page.dart';
import 'package:flutter_a2z/screens/flutter_packages/curved_navigation_bar/pages/profile_page.dart';
import 'package:flutter_a2z/screens/flutter_packages/curved_navigation_bar/pages/search_page.dart';
import 'package:flutter_a2z/screens/flutter_packages/curved_navigation_bar/pages/settings_page.dart';

class CurvedNavigationBarScreen extends StatefulWidget {
  final String title;
  final Object model;

  const CurvedNavigationBarScreen({Key? key, required this.title, required this.model}) : super(key: key);
  @override
  _CurvedNavigationBarScreenState createState() => _CurvedNavigationBarScreenState();
}

class _CurvedNavigationBarScreenState extends State<CurvedNavigationBarScreen> {
  //for change tab on button click
  final _navigationKey = GlobalKey<CurvedNavigationBarState>();
  //for select bottomNavigationBar item, default is 0
  int _index = 2;

  //pages
  final screens = const [
    HomePage(),
    SearchPage(),
    FavouritePage(),
    SettingPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    const items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.search, size: 30),
      Icon(Icons.favorite, size: 30),
      Icon(Icons.settings, size: 30),
      Icon(Icons.person, size: 30),
    ];
    return Scaffold(
      extendBody: true, //body property goes under bottom navigation
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: screens[_index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        child: CurvedNavigationBar(
          key: _navigationKey,
          backgroundColor: Colors.transparent,
          color: Colors.blue,
          buttonBackgroundColor: Colors.white,
          index: _index,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
          items: items,
          onTap: (index) => setState(() {
            _index = index;
          }),
        ),
      ),
      floatingActionButton: CommonFloatingActionButtonForDisplayCode(
        heroTag: curvedNavigationBarRoute,
        screenTitle: curvedNavigationBarTitle,
        filePath: curvedNavigationBarFilePath,
        model: widget.model,
      ),
    );
  }
}
