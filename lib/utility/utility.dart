import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Utility{
   //open LINK in browser
  static launchURL(BuildContext buildContext, String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      CommonWidgets.showToast(buildContext, "Not yet implemented");
    }
  }
}