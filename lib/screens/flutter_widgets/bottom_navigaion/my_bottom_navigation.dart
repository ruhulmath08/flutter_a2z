import 'package:flutter/material.dart';

class MyBottomNavigation extends StatefulWidget {
  final String title;

  const MyBottomNavigation({Key key, this.title}) : super(key: key);

  @override
  _MyBottomNavigationState createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int _selectPage = 1;

  final _pageOption = [
    HomePage(),
    DailyPage(),
    LandscapePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _pageOption[_selectPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectPage,
        selectedFontSize: 16,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.red,
        onTap: (int index) {
          setState(() {
            _selectPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Daily',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.landscape),
            label: 'Landscape',
          ),
        ],
      ),
    );
  }
}

//home page
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}

//daily page
class DailyPage extends StatefulWidget {
  @override
  _DailyPageState createState() => _DailyPageState();
}

class _DailyPageState extends State<DailyPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Daily Page'),
    );
  }
}

//landscape page
class LandscapePage extends StatefulWidget {
  @override
  _LandscapePageState createState() => _LandscapePageState();
}

class _LandscapePageState extends State<LandscapePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text( 'Landscape Page'),
    );
  }
}
