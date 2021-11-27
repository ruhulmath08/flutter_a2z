import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandlerScreen extends StatefulWidget {
  final String title;
  final Object model;

  const PermissionHandlerScreen({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);

  @override
  _PermissionHandlerScreenState createState() => _PermissionHandlerScreenState();
}

class _PermissionHandlerScreenState extends State<PermissionHandlerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
          children: Permission.values
              .where((permission) {
                if (Platform.isIOS) {
                  return permission != Permission.unknown &&
                      permission != Permission.sms &&
                      permission != Permission.storage &&
                      permission != Permission.ignoreBatteryOptimizations &&
                      permission != Permission.accessMediaLocation &&
                      permission != Permission.activityRecognition &&
                      permission != Permission.manageExternalStorage &&
                      permission != Permission.systemAlertWindow &&
                      permission != Permission.requestInstallPackages &&
                      permission != Permission.accessNotificationPolicy &&
                      permission != Permission.bluetoothScan &&
                      permission != Permission.bluetoothAdvertise &&
                      permission != Permission.bluetoothConnect;
                } else {
                  return permission != Permission.unknown &&
                      permission != Permission.mediaLibrary &&
                      permission != Permission.photos &&
                      permission != Permission.photosAddOnly &&
                      permission != Permission.reminders &&
                      permission != Permission.appTrackingTransparency &&
                      permission != Permission.criticalAlerts;
                }
              })
              .map((permission) => PermissionWidget(permission))
              .toList(),
        ),
      ),
    );
  }
}

/// Permission widget containing information about the passed [Permission]
class PermissionWidget extends StatefulWidget {
  /// Constructs a [PermissionWidget] for the supplied [Permission]
  const PermissionWidget(this._permission);

  final Permission _permission;

  @override
  _PermissionState createState() => _PermissionState();
}

class _PermissionState extends State<PermissionWidget> {
  //_PermissionState(this._permission);

  //final Permission _permission;
  PermissionStatus _permissionStatus = PermissionStatus.denied;

  @override
  void initState() {
    super.initState();

    _listenForPermissionStatus();
  }

  Future _listenForPermissionStatus() async {
    final status = await widget._permission.status;
    setState(() => _permissionStatus = status);
  }

  Color getPermissionColor() {
    switch (_permissionStatus) {
      case PermissionStatus.denied:
        return Colors.red;
      case PermissionStatus.granted:
        return Colors.green;
      case PermissionStatus.limited:
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        title: Text(
          widget._permission.toString(),
          style: Theme.of(context).textTheme.bodyText1,
        ),
        subtitle: Text(
          _permissionStatus.toString(),
          style: TextStyle(color: getPermissionColor()),
        ),
        trailing: (widget._permission is PermissionWithService)
            ? IconButton(
                icon: const Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                onPressed: () {
                  checkServiceStatus(context, widget._permission as PermissionWithService);
                },
              )
            : null,
        onTap: () {
          requestPermission(widget._permission);
        },
      ),
    );
  }

  Future checkServiceStatus(BuildContext context, PermissionWithService permission) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text((await permission.serviceStatus).toString()),
      ),
    );
  }

  Future<void> requestPermission(Permission permission) async {
    final status = await permission.request();

    setState(() {
      log(status.toString());
      _permissionStatus = status;
      log(_permissionStatus.toString());
    });
  }
}
