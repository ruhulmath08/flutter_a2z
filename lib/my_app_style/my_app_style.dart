import 'package:flutter/material.dart';

//SpeedDialChild(display_code_screen) label style
const TextStyle speedDialLabelStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 17);
const TextStyle buttonTitleStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

// ignore: constant_identifier_names
const COLOR_BLACK = Color.fromRGBO(48, 47, 48, 1.0);
const COLOR_GREY = Color.fromRGBO(141, 141, 141, 1.0);

const COLOR_WHITE = Colors.white;
const COLOR_BLUE = Colors.blue;
const COLOR_DARK_BLUE = Color.fromRGBO(20, 25, 45, 1.0);

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
  headline1: TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 26),
  headline2: TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
  headline3: TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
  headline4: TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 16),
  headline5: TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
  headline6: TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
  bodyText1: TextStyle(color: COLOR_BLACK, fontSize: 14, fontWeight: FontWeight.w500, height: 1.5),
  bodyText2: TextStyle(color: COLOR_GREY, fontSize: 14, fontWeight: FontWeight.w500, height: 1.5),
  subtitle1: TextStyle(color: COLOR_BLACK, fontSize: 12, fontWeight: FontWeight.w400),
  subtitle2: TextStyle(color: COLOR_GREY, fontSize: 12, fontWeight: FontWeight.w400),
  button: TextStyle(color: COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 20),
  caption: TextStyle(color: COLOR_WHITE, fontSize: 18, fontWeight: FontWeight.w400),
);

//for small devices
const TextTheme TEXT_THEME_SMALL = TextTheme(
  headline1: TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
  headline2: TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
  headline3: TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 18),
  headline4: TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
  headline5: TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
  headline6: TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 10),
  bodyText1: TextStyle(color: COLOR_BLACK, fontSize: 12, fontWeight: FontWeight.w500, height: 1.5),
  bodyText2: TextStyle(color: COLOR_GREY, fontSize: 12, fontWeight: FontWeight.w500, height: 1.5),
  subtitle1: TextStyle(color: COLOR_BLACK, fontSize: 10, fontWeight: FontWeight.w400),
  subtitle2: TextStyle(color: COLOR_GREY, fontSize: 10, fontWeight: FontWeight.w400),
  button: TextStyle(color: COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 18),
  caption: TextStyle(color: COLOR_WHITE, fontSize: 16, fontWeight: FontWeight.w400),
);
