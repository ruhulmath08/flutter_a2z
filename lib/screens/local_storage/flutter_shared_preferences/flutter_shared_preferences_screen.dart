import 'package:flutter/material.dart';
import 'package:flutter_a2z/screens/local_storage/flutter_shared_preferences/tab_screen/display_value_screen.dart';
import 'package:flutter_a2z/screens/local_storage/flutter_shared_preferences/tab_screen/save_value_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FlutterSharedPreferencesScreen extends StatefulWidget {
  final String title;
  final Object model;

  const FlutterSharedPreferencesScreen({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);

  @override
  State<FlutterSharedPreferencesScreen> createState() => _FlutterSharedPreferencesScreenState();
}

class _FlutterSharedPreferencesScreenState extends State<FlutterSharedPreferencesScreen> {
  int index = 0;
  final screens = [
    SaveValueScreen(),
    DisplayValueScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: const TabBar(
            indicatorWeight: 3,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.save),
                text: 'Save Value',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.list),
                text: 'Display Value',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SaveValueScreen(),
            DisplayValueScreen(),
          ],
        ),
      ),
    );
  }
}
