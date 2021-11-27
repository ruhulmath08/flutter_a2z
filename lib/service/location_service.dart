import 'dart:async';
import 'dart:developer';

import 'package:flutter_a2z/models/user_location.dart';
import 'package:location/location.dart';

class LocationService {
  //keep track of current Location
  late UserLocation _currentLocation;
  Location location = Location();

  //continuously emit location updates
  final StreamController<UserLocation> _locationController = StreamController<UserLocation>.broadcast();
  Stream<UserLocation> get locationStream => _locationController.stream;

  LocationService() {
    location.requestPermission().then((granted) {
      if (granted == PermissionStatus.granted) {
        location.onLocationChanged.listen((locationData) {
          _locationController.add(
            UserLocation(
              latitude: locationData.latitude!,
              longitude: locationData.longitude!,
              speed: locationData.speed!,
            ),
          );
        });
      }
    });
  }

  Future<UserLocation> getLocation() async {
    try {
      final userLocation = await location.getLocation();
      _currentLocation = UserLocation(
        longitude: userLocation.latitude!,
        latitude: userLocation.longitude!,
        speed: userLocation.speed!,
      );
    } catch (e) {
      log('Cannot access the location', error: e.toString());
    }

    return _currentLocation;
  }
}
