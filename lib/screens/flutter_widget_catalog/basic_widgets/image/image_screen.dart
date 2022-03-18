import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  final String title;
  const ImageScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                text: 'Image',
                icon: Icon(Icons.table_view),
              ),
              Tab(
                text: 'Image.asset',
                icon: Icon(Icons.apps_outlined),
              ),
              Tab(
                text: 'Image.network',
                icon: Icon(Icons.list_outlined),
              ),
              Tab(
                text: 'Image.file',
                icon: Icon(Icons.list_outlined),
              ),
              Tab(
                text: 'Image.memory',
                icon: Icon(Icons.list_outlined),
              ),
            ],
          ),
        ),
        body: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
