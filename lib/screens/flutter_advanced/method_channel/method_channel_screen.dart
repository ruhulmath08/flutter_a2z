import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_a2z/common_widgets/common_floating_action_button_for_display_code.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MethodChannelScreen extends StatefulWidget {
  final String title;
  final Object model;

  const MethodChannelScreen({Key? key, required this.title, required this.model}) : super(key: key);

  @override
  _MethodChannelScreenState createState() => _MethodChannelScreenState();
}

class _MethodChannelScreenState extends State<MethodChannelScreen> {
  static const batteryChannel = MethodChannel('com.ruhul.fluttera2z/battery');
  String batteryLevel = 'Get Battery Level';
  String getLatLng = 'Get Latitude and Longitude';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          physics: const BouncingScrollPhysics(),
          children: [
            ElevatedButton(
              onPressed: getBatteryLevel,
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, (40.h + 40.w) / 2),
              ),
              child: Text(batteryLevel, style: TextStyle(fontSize: 17.sp)),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: getLatitudeLongitude,
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, (40.h + 40.w) / 2),
              ),
              child: Text(getLatLng, style: TextStyle(fontSize: 17.sp)),
            )
          ],
        ),
      ),
      floatingActionButton: CommonFloatingActionButtonForDisplayCode(
        heroTag: methodChannelRoute,
        screenTitle: methodChannelTitle,
        filePath: methodChannelFilePath,
        model: widget.model,
      ),
    );
  }

  Future getBatteryLevel() async {
    final arguments = {'name': 'Battery level'};
    final String newBatteryLevel = await batteryChannel.invokeMethod('getBatteryLevel', arguments) as String;
    setState(() => batteryLevel = newBatteryLevel);
  }

  Future getLatitudeLongitude() async {
    final arguments = {'name': 'Position'};
    final String newLatLng = await batteryChannel.invokeMethod('getPosition', arguments) as String;
    setState(() => getLatLng = newLatLng);
  }
}

//Flutter Tutorial - How To Call Android Native Code [2021] 1/2 Java & Kotlin Platform Specific Code
// Flutter Tutorial - How To Call Flutter From Android Native Code [2021] 2/2 Java & Kotlin
