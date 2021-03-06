import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

//open LINK in browser
launchURL(BuildContext buildContext, String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    CommonWidgets.showToast(buildContext, 'Not yet implemented');
  }
}

String formatCurrency(num amount, {int decimalCount = 0}) {
  final formatCurrency = NumberFormat.simpleCurrency(decimalDigits: decimalCount);
  return formatCurrency.format(amount);
}