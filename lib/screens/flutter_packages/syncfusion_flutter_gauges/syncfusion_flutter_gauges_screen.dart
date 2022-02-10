import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/strings.dart';
import 'package:flutter_a2z/local_storage_config/shared_preferences_config/flutter_a2z_shared_preferences.dart';
import 'package:flutter_a2z/models/user_location.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SyncfusionFlutterGaugesScreen extends StatefulWidget {
  final String title;
  final Object model;

  const SyncfusionFlutterGaugesScreen({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);

  @override
  State<SyncfusionFlutterGaugesScreen> createState() => _SyncfusionFlutterGaugesScreenState();
}

class _SyncfusionFlutterGaugesScreenState extends State<SyncfusionFlutterGaugesScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final userLocation = Provider.of<UserLocation>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Top Speed: ${topSpeed(topSeed: userLocation.speed)}',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 15),
            SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                  maximum: 220,
                  interval: 10,
                  ranges: <GaugeRange>[
                    GaugeRange(
                      startValue: 0,
                      endValue: 100,
                      color: Colors.green,
                    ),
                    GaugeRange(
                      startValue: 100,
                      endValue: 150,
                      color: Colors.orange,
                    ),
                    GaugeRange(
                      startValue: 150,
                      endValue: 220,
                      color: Colors.red,
                    ),
                  ],
                  pointers: <GaugePointer>[
                    NeedlePointer(
                      enableAnimation: true,
                      value: ((userLocation.speed) * ((60 * 60) / 1000)).roundToDouble(),
                    ),
                  ],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                      widget: Text(
                        ((userLocation.speed) * ((60 * 60) / 1000).roundToDouble()).toStringAsFixed(2),
                        style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                      positionFactor: 0.5,
                      angle: 90,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Show Details'),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  FlutterA2zSharedPreferences.setDouble(key: spTopSpeed, value: 0.000);
                },
                child: const Text('Clear'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double topSpeed({required double topSeed}) {
    final double topSpeedSp = FlutterA2zSharedPreferences.getDouble(key: spTopSpeed) ?? 0.00;
    if (topSeed > topSpeedSp) {
      setState(() {
        FlutterA2zSharedPreferences.setDouble(key: spTopSpeed, value: topSeed);
      });
      return (topSeed * ((60 * 60) / 1000)).roundToDouble();
    } else {
      return (topSpeedSp * ((60 * 60) / 1000)).roundToDouble();
    }
  }
}
