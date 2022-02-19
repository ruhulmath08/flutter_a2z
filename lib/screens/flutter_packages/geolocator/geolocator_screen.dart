import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/show_flutter_toast.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class GeoLocatorScreen extends StatefulWidget {
  final String title;
  final Object model;

  const GeoLocatorScreen({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);

  @override
  _GeoLocatorScreenState createState() => _GeoLocatorScreenState();
}

class _GeoLocatorScreenState extends State<GeoLocatorScreen> {
  Position? currentLocation;
  late bool _isLoading;
  Placemark? possibleAddress;

  @override
  void initState() {
    super.initState();
    _isLoading = false;
    _requestPermission();
    getUserLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (_isLoading == true)
                const CircularProgressIndicator.adaptive()
              else
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Lat: ${currentLocation?.latitude}, Lng: ${currentLocation?.longitude}, Alt: ${currentLocation?.altitude}',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: getUserLocation,
                child: const Text('Get location'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: getPossibleAddress,
                child: const Text('Get Possible Address'),
              ),
              const SizedBox(height: 10),
              if (currentLocation == null)
                const Text('Press button for location')
              else
                Expanded(
                  child: Row(
                    children: [Text(possibleAddress!.toString())],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _requestPermission() async {
    bool _serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    _serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!_serviceEnabled) {
      final permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return;
      }
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse || permission != LocationPermission.always) {
        return;
      }
    }
  }

  Future getUserLocation() async {
    currentLocation = await locateUser();
    setState(() {
      _isLoading = false;
    });
  }

  Future<Position> locateUser() async {
    setState(() {
      _isLoading = true;
    });
    return Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

  Future<void> getPossibleAddress() async {
    if (currentLocation != null) {
      final List<Placemark> placeMarks = await placemarkFromCoordinates(52.2165157, 6.9437819);
      setState(() {
        possibleAddress = placeMarks.first;
      });
    } else {
      showFlutterToast(
        context: context,
        message: 'Location not initialize',
        backgroundColor: Colors.red,
      );
    }
  }
}
