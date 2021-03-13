import 'package:flutter/material.dart';
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
    return MaterialApp(
      title: 'Flutter a2z',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: LOGIN_SCREEN_ROUTE,
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => const UndefinedScreen(title: UNDEFINED_SCREEN_TITLE),
      ),
    );
  }
}
