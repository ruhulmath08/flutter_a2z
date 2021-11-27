import 'package:flutter/material.dart';
import 'package:flutter_a2z/screens/flutter_widget_catalog/material_components/app_structure_and_navigation/bottom_navigation_bar/tab_screen/chat_tab_screen.dart';
import 'package:flutter_a2z/screens/flutter_widget_catalog/material_components/app_structure_and_navigation/bottom_navigation_bar/tab_screen/mail_tab_screen.dart';
import 'package:flutter_a2z/screens/flutter_widget_catalog/material_components/app_structure_and_navigation/bottom_navigation_bar/tab_screen/meet_tab_screen.dart';
import 'package:flutter_a2z/screens/flutter_widget_catalog/material_components/app_structure_and_navigation/bottom_navigation_bar/tab_screen/space_tab_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  final String title;

  const BottomNavigationBarScreen({Key? key, required this.title}) : super(key: key);

  @override
  _BottomNavigationBarScreenState createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int index = 0;

  final screens = const [
    MailTabScreen(),
    ChatTabScreen(),
    SpaceTabScreen(),
    MeetTabScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: screens[index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.code),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: const Color(0xFFf1f5fb),
          //labelBehavior: NavigationDestinationLabelBehavior.alwaysHide, //hide level
          //labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected, //show only selected level
          animationDuration: const Duration(seconds: 2),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.email_outlined),
              selectedIcon: Icon(Icons.email),
              label: 'Mail',
            ),
            NavigationDestination(
              icon: Icon(Icons.chat_bubble_outline),
              selectedIcon: Icon(Icons.chat_bubble),
              label: 'Chat',
            ),
            NavigationDestination(
              icon: Icon(Icons.group_outlined),
              selectedIcon: Icon(Icons.group),
              label: 'Space',
            ),
            NavigationDestination(
              icon: Icon(Icons.videocam_outlined),
              selectedIcon: Icon(Icons.videocam),
              label: 'Meet',
            ),
          ],
        ),
      ),
    );
  }
}

//Link: https://www.youtube.com/watch?v=2emB2VFrRnA&t=0s
