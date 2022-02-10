import 'dart:async';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

class LocationHelper {
  static LocationData? _currentPosition;
  Location location = Location();
  StreamSubscription<LocationData>? _locationSubscription;
  LocationHelper();

  Future<void> initialize() async {
    await _requestPermission();
    final currentPosition = await _getLocation();
    _currentPosition = currentPosition;
    await _listenLocation();
    await location.changeSettings();
    //await _helper.enableBackgroundMode();
  }

  Future<void> _listenLocation() async {
    _locationSubscription = location.onLocationChanged.handleError((dynamic e) {
      if (e is PlatformException) {
        log('Error: in LocationHelper : _listenLocation() -> ${e.message}');
      }
      _locationSubscription?.cancel();
      _locationSubscription = null;
    }).listen((LocationData currentLocation) {
      _currentPosition = currentLocation;
    });
  }

  Future<LocationData?> _getLocation() async {
    if (_currentPosition == null) {
      final LocationData locationData = await location.getLocation();
      return locationData;
    }
    return _currentPosition;
  }

  Future<void> _requestPermission() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
  }

  static LatLng getCurrentLatLng() {
    if (_currentPosition == null) {
      return LatLng(0.0, 0.0);
    } else {
      return LatLng(_currentPosition?.latitude ?? 0, _currentPosition?.longitude ?? 0);
    }
  }

  static Future<LocationData?> getCurrentPosition() async {
    final LocationHelper _helper = LocationHelper();
    if (_currentPosition == null) {
      await _helper._getLocation();
    }
    return _currentPosition;
  }
}
