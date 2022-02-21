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

  //Based on screen width this method return the number (number of card for display in GridView)
  static int cardPerRow({required BuildContext context}) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final int cardPerRow = (screenWidth / 200).round();
    return cardPerRow;
  }
}
