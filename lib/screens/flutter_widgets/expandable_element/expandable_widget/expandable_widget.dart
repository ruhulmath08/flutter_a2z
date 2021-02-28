import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';
import 'package:flutter_a2z/screens/flutter_widgets/expandable_element/expandable_widget/advanced_tile_model.dart';
import 'package:flutter_a2z/screens/flutter_widgets/expandable_element/expandable_widget/advanced_tiles_data.dart';

class MyExpandableWidget extends StatefulWidget {
  final String title;

  const MyExpandableWidget({Key key, this.title}) : super(key: key);

  @override
  _MyExpandableWidgetState createState() => _MyExpandableWidgetState();
}

class _MyExpandableWidgetState extends State<MyExpandableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList.radio( //ExpansionPanelList.radio is for expanded only one element at a time
          expansionCallback: (index, isExpanded) {
            final tile = advancedTiles[index];
            setState(() => tile.isExpanded = isExpanded);

            CommonWidgets.showToast(context, tile.title);
          },
          children: advancedTiles
              .map((tile) => ExpansionPanelRadio(
            value: tile.title,
            canTapOnHeader: true,
            headerBuilder: (context, isExpanded) => buildTile(tile),
            body: Column(
              children: tile.tiles.map(buildTile).toList(),
            ),
          ))
              .toList(),
        ),
      ),
    );
  }

  Widget buildTile(AdvancedTile tile) => ListTile(
    leading: tile.icon != null ? Icon(tile.icon, color: Colors.blue, size: 25,) : null,
    title: Text(tile.title, style: const TextStyle(color: Colors.black, fontSize: 17),),
    onTap: tile.tiles.isEmpty
        ? () => CommonWidgets.showToast(context, tile.title) : null,
  );
}