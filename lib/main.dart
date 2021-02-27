import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_a2z/my_app_style/my_app_style.dart';
import 'package:flutter_a2z/routing/router.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/undefined/undefined_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String undefinedView = 'Undefined View';

  //this widget is the root of our application
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.lightBlue,
        systemNavigationBarDividerColor: Colors.lightBlue,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.lightBlue,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
    final double screenWidth = window.physicalSize.width;
    return MaterialApp(
      title: 'Flutter a2z',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: COLOR_BLUE,
      //   accentColor: COLOR_DARK_BLUE,
      //   textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
      //   fontFamily: 'Roboto',
      //   buttonColor: COLOR_BLUE,
      //   //backgroundColor: Colors.red
      //   //bottomAppBarColor: Colors.red
      //
      // ),
      onGenerateRoute: generateRoute,
      initialRoute: LOGIN_SCREEN_ROUTE,
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => const UndefinedScreen(title: UNDEFINED_SCREEN_TITLE),
      ),
    );
  }
}
