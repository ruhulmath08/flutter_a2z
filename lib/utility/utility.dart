import 'package:flutter/material.dart';

class Utility {
  static void navigateScreen({required BuildContext context, required String title, required Object? model}) {
    final spiltTitle = title.split(' ');
    final pageRoute = StringBuffer();
    pageRoute.write('/');
    for (final String item in spiltTitle) {
      pageRoute.write('${item.toLowerCase()}_');
    }

    final String routePath = pageRoute.toString().substring(0, pageRoute.length - 1);
    Navigator.pushNamed(
      context,
      routePath,
      arguments: model,
    );
  }

  static String getRouteFromTitle(String title) {
    final spiltTitle = title.split(' ');
    final pageRoute = StringBuffer();
    pageRoute.write('/');
    for (final String item in spiltTitle) {
      pageRoute.write('${item.toLowerCase()}_');
    }

    final String routePath = pageRoute.toString().substring(0, pageRoute.length - 1);

    return routePath;
  }
}
