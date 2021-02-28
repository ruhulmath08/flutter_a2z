import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';
import 'package:flutter_a2z/screens/flutter_widgets/expandable_element/expandable_panel_widget/basic_tile_model.dart';
import 'package:flutter_a2z/screens/flutter_widgets/expandable_element/expandable_panel_widget/basic_tile_data.dart';

class MyExpandablePanelWidget extends StatefulWidget {
  final String title;

  const MyExpandablePanelWidget({Key key, this.title}) : super(key: key);

  @override
  _MyExpandablePanelWidgetState createState() => _MyExpandablePanelWidgetState();
}

class _MyExpandablePanelWidgetState extends State<MyExpandablePanelWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: basicTiles.map((tile) => BasicTileWidget(tile: tile)).toList(),
      ),
    );
  }
}

class BasicTileWidget extends StatelessWidget {
  final BasicTile tile;

  const BasicTileWidget({
    Key key,
    @required this.tile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = tile.title;
    final titles = tile.tiles;

    if (titles.isEmpty) {
      return ListTile(
        onTap: (){
          CommonWidgets.showToast(context, title);
        },
        title: Text(
          title,
          style: const TextStyle(color: Colors.black, fontSize: 17),
        ),
      );
    } else {
      return Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: Colors.grey),
        ),
        child: ExpansionTile(
          key: PageStorageKey(title),
          title: Text(
            title,
            style: const TextStyle(color: Colors.black, fontSize: 17),
          ),
          children: titles.map((tile) => BasicTileWidget(tile: tile)).toList(),
        ),
      );
    }
  }
}
