import 'package:flutter/material.dart';
import 'package:flutter_a2z/screens/map_details/osm_map/add_osm_marker_on_tap/add_osm_marker_on_tap_screen.dart';
import 'package:flutter_a2z/screens/map_details/osm_map/osm_dragabble_marker/osm_dragabble_marker_screen.dart';

class OsmMapScreen extends StatefulWidget {
  final String title;
  final Object model;

  const OsmMapScreen({Key? key, required this.title, required this.model}) : super(key: key);

  @override
  _OsmMapScreenState createState() => _OsmMapScreenState();
}

class _OsmMapScreenState extends State<OsmMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OsmDraggableMarkerScreen(title: 'OSM Draggable Marker'),
                ),
              ),
              child: const Text('OSM Draggable Marker'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddOsmMarkerOnTapScreen(title: 'Add OSM marker on tap'),
                ),
              ),
              child: const Text('OSM Draggable Marker'),
            ),
          ],
        ),
      ),
    );
  }
}
