import 'package:flutter/material.dart';
import 'package:flutter_a2z/bottom_navigaion/my_bottom_navigation.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/buttons/flutter_buttons.dart';
import 'package:flutter_a2z/screens/buttons/my_check_box.dart';
import 'package:flutter_a2z/screens/buttons/my_dropdown_button.dart';
import 'package:flutter_a2z/screens/buttons/my_popup_button.dart';
import 'package:flutter_a2z/screens/buttons/my_radio_button.dart';
import 'package:flutter_a2z/screens/buttons/my_toggle_button.dart';
import 'package:flutter_a2z/screens/crud/flutter_crud/flutter_crud.dart';
import 'package:flutter_a2z/screens/crud/flutter_crud_add/flutter_crud_add.dart';
import 'package:flutter_a2z/screens/home/home_screen.dart';
import 'package:flutter_a2z/screens/login/login_screen.dart';
import 'package:flutter_a2z/screens/tab_view_layout/tab_view_layout.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    //login screen
    case LOGIN_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => LoginScreen(
          title: LOGIN_SCREEN_TITLE,
        ),
      );
      break;

    //home screen
    case HOME_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => HomeScreen(
          title: HOME_SCREEN_TITLE,
        ),
      );
      break;

    /*--------------------------------- Flutter Button : Start---------------------------------*/
    //button
    case FLUTTER_BUTTON_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => FlutterButton(
          title: FLUTTER_BUTTON_SCREEN_TITLE,
        ),
      );
      break;

    //radio button
    case FLUTTER_RADIOBUTTON_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => MyRadioButton(
          title: FLUTTER_RADIOBUTTON_SCREEN_TITLE,
        ),
      );
      break;

    //checkbox
    case FLUTTER_CHECKBOX_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => MyCheckBox(
          title: FLUTTER_CHECKBOX_SCREEN_TITLE,
        ),
      );
      break;

    //toggle button
    case FLUTTER_TOGGLE_BUTTON_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => MyToggleButton(
          title: FLUTTER__TOGGLE_BUTTON__SCREEN_TITLE,
        ),
      );
      break;

    //dropdown button
    case FLUTTER_DROPDOWN_BUTTON_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => MyDropdownButton(
          title: FLUTTER_DROPDOWN_BUTTON_SCREEN_TITLE,
        ),
      );
      break;

    //popup button
    case FLUTTER_POPUP_BUTTON_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => MyPopupButton(
          title: FLUTTER_POPUP_BUTTON_SCREEN_TITLE,
        ),
      );
      break;
    /*--------------------------------- Flutter Button : End---------------------------------*/

    /*--------------------------------- Flutter BottomNavigationView : Start---------------------------------*/
    case FLUTTER_BOTTOM_NAVIGATION_VIEW_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => MyBottomNavigation(
          title: FLUTTER_BOTTOM_NAVIGATION_VIEW_SCREEN_TITLE,
        ),
      );
    /*--------------------------------- Flutter BottomNavigationView : End---------------------------------*/

    /*--------------------------------- TabViewLayout : Start ---------------------------------*/
    case FLUTTER_TAB_VIEW_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => TabViewLayout(
          title: FLUTTER_TAB_VIEW_SCREEN_TITLE,
        ),
      );
    /*--------------------------------- TabViewLayout : End ---------------------------------*/

    /*--------------------------------- Flutter CRUD : Start---------------------------------*/
    //flutter CRUD
    case FLUTTER_CRUD_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => FlutterCrud(
          title: FLUTTER_CRUD_SCREEN_TITLE,
        ),
      );

  //flutter CRUD ADD
    case FLUTTER_CRUD_ADD_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => FlutterCrudAdd(
          title: FLUTTER_CRUD_ADD_SCREEN_TITLE,
        ),
      );
  //flutter CRUD UPDATE
  //flutter CRUD
    /*--------------------------------- Flutter CRUD : End---------------------------------*/
  }
}
