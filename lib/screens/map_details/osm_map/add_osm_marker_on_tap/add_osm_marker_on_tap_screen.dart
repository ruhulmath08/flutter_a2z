import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_a2z/utility/location_helper.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class AddOsmMarkerOnTapScreen extends StatefulWidget {
  final String title;

  const AddOsmMarkerOnTapScreen({Key? key, required this.title}) : super(key: key);

  @override
  _AddOsmMarkerOnTapScreenState createState() => _AddOsmMarkerOnTapScreenState();
}

class _AddOsmMarkerOnTapScreenState extends State<AddOsmMarkerOnTapScreen> {
  late LatLng _latLng;
  List<LatLng> latLngList = [];

  @override
  void initState() {
    super.initState();
    _latLng = LocationHelper.getCurrentLatLng();
  }

  @override
  Widget build(BuildContext context) {
    log(_latLng.toString());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: FlutterMap(
          options: MapOptions(
            center: _latLng, //CTrends Software & Services Ltd
            zoom: 18.0,
            onTap: (tapPos, LatLng latLng) async {
              //log('${latLng.latitude} - ${latLng.longitude}');
              await buildLatLng(latLng);
            },
          ),
          layers: [
            TileLayerOptions(urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', subdomains: ['a', 'b', 'c']),
            MarkerLayerOptions(
              markers: latLngList
                  .map(
                    (e) => Marker(
                      width: 80,
                      height: 80,
                      rotate: true,
                      builder: (context) => IconButton(
                        icon: const Icon(Icons.location_pin, size: 50),
                        //color: Colors.green,
                        onPressed: () {
                          log(e.toString());
                        },
                      ),
                      point: e,
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> buildLatLng(LatLng latLng) async {
    if (latLngList.length == 2) return;
    latLngList.add(latLng);
    setState(() {});
  }
}
