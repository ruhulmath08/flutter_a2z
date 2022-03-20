import 'package:flutter/material.dart';
import 'package:flutter_a2z/screens/flutter_widget_catalog/basic_widgets/image/tabs/image_asset_tab.dart';
import 'package:flutter_a2z/screens/flutter_widget_catalog/basic_widgets/image/tabs/image_file_tab.dart';
import 'package:flutter_a2z/screens/flutter_widget_catalog/basic_widgets/image/tabs/image_memory_tab.dart';
import 'package:flutter_a2z/screens/flutter_widget_catalog/basic_widgets/image/tabs/image_network_tab.dart';

class ImageScreen extends StatelessWidget {
  final String title;
  const ImageScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                text: 'Image.asset',
                icon: Icon(Icons.image_aspect_ratio_sharp),
              ),
              Tab(
                text: 'Image.network',
                icon: Icon(Icons.network_wifi),
              ),
              Tab(
                text: 'Image.file',
                icon: Icon(Icons.file_copy),
              ),
              Tab(
                text: 'Image.memory',
                icon: Icon(Icons.memory),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ImageAssetTab(),
            ImageNetworkTab(),
            ImageFileTab(),
            ImageMemoryTab(),
          ],
        ),
      ),
    );
  }
}
