import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_a2z/models/user_location.dart';
import 'package:provider/provider.dart';

class FlutterLocationAsServiceScreen extends StatelessWidget {
  final String title;
  final Object model;

  const FlutterLocationAsServiceScreen({required this.title, required this.model});

  @override
  Widget build(BuildContext context) {
    final userLocation = Provider.of<UserLocation>(context);
    log('${(userLocation.speed) * ((60 * 60) / 1000)}');
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Text('Top Speed: ${}'),
            // SizedBox(height: 15.h),
            Text(
              'Speed: ${((userLocation.speed) * ((60 * 60) / 1000)).toStringAsFixed(3)}',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 15),
            Text(
              'Location: Lat:${userLocation.latitude}, Lng:${userLocation.longitude}',
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
