import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telephony/telephony.dart';

class TelephonyScreen extends StatefulWidget {
  final String title;
  final Object model;

  const TelephonyScreen({Key? key, required this.title, required this.model}) : super(key: key);

  @override
  _TelephonyScreenState createState() => _TelephonyScreenState();
}

class _TelephonyScreenState extends State<TelephonyScreen> {
  String _telephonyInfo = 'Unknown Info';
  Telephony telephony = Telephony.instance;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  //Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    // Platform messages may fail, so we use a try/catch PlatformException.
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.

    NetworkType? dataNetworkType;
    String? networkOperatorName;
    String? simOperator;
    String? simOperatorName;
    bool? isSmsCapable;
    List<SignalStrength> signalStrengths = [];
    final bool? result = await telephony.requestPhoneAndSmsPermissions;

    //if (result != null && result) {
    if (true) {
      try {
        dataNetworkType = await telephony.dataNetworkType;
        networkOperatorName = await telephony.networkOperatorName;
        signalStrengths = await telephony.signalStrengths;
        simOperator = await telephony.simOperator;
        simOperatorName = await telephony.simOperatorName;
        isSmsCapable = await telephony.isSmsCapable;

        setState(() {
          _telephonyInfo = 'DataNetworkType: ${dataNetworkType?.index}\n'
              'NetworkOperatorName: $networkOperatorName\n'
              'SignalStrengths: $signalStrengths\n'
              'SimOperator: $simOperator\n'
              'SimOperator: $simOperatorName\n'
              'isSmsCapable: $isSmsCapable\n'
              'signalStrengths: $signalStrengths.';
        });
      } on PlatformException catch (e) {
        log('Failed to get data from $runtimeType"(telephony package)"', error: e.toString());
      }
    }

    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(_telephonyInfo),
      ),
    );
  }
}
