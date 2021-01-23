import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Utility{
   //open LINK in browser
  // ignore: type_annotate_public_apis, always_declare_return_types
  static launchURL(BuildContext buildContext, String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      CommonWidgets.showToast(buildContext, 'Not yet implemented');
    }
  }
}