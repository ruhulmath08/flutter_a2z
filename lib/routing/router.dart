import 'package:flutter/material.dart';
import 'package:flutter_a2z/bottom_navigaion/my_bottom_navigation.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/buttons/flutter_buttons.dart';
import 'package:flutter_a2z/screens/buttons/my_check_box.dart';
import 'package:flutter_a2z/screens/buttons/my_dropdown_button.dart';
import 'package:flutter_a2z/screens/buttons/my_popup_button.dart';
import 'package:flutter_a2z/screens/buttons/my_radio_button.dart';
import 'package:flutter_a2z/screens/buttons/my_toggle_button.dart';
import 'package:flutter_a2z/screens/cards/flutter_card.dart';
import 'package:flutter_a2z/screens/cards/flutter_flip_card/flutter_flip_card.dart';
import 'package:flutter_a2z/screens/crud/flutter_crud/flutter_crud.dart';
import 'package:flutter_a2z/screens/crud/flutter_crud_add/flutter_crud_add.dart';
import 'package:flutter_a2z/screens/home/home_screen.dart';
import 'package:flutter_a2z/screens/login/login_screen.dart';
import 'package:flutter_a2z/screens/sign_up/sign_up_screen.dart';
import 'package:flutter_a2z/screens/tab_view_layout/tab_view_layout.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    /*--------------------------------- Login : Start---------------------------------*/
    case LOGIN_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => LoginScreen(
          title: LOGIN_SCREEN_TITLE,
        ),
      );
      break;
    /*--------------------------------- Login : End---------------------------------*/

    /*--------------------------------- SignUp : Start---------------------------------*/
    case SIGN_UP_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => SignUpScreen(
          title: SIGN_UP_SCREEN__TITLE,
        ),
      );
    /*--------------------------------- SignUp : End---------------------------------*/

    /*--------------------------------- HomeScreen : Start---------------------------------*/
    case HOME_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => HomeScreen(
          title: HOME_SCREEN_TITLE,
        ),
      );
      break;
    /*--------------------------------- HomeScreen : End---------------------------------*/

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
      break;
    /*--------------------------------- TabViewLayout : End ---------------------------------*/

    /*--------------------------------- Flutter CRUD : Start---------------------------------*/
    //flutter CRUD
    case FLUTTER_CRUD_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => FlutterCrud(
          title: FLUTTER_CRUD_SCREEN_TITLE,
        ),
      );
      break;

    //flutter CRUD ADD
    case FLUTTER_CRUD_ADD_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => FlutterCrudAdd(
          title: FLUTTER_CRUD_ADD_SCREEN_TITLE,
        ),
      );
      break;

    //flutter CRUD UPDATE
    //flutter CRUD
    /*--------------------------------- Flutter CRUD : End---------------------------------*/

    /*--------------------------------- Flutter CARD : Start---------------------------------*/
    //flutter card
    case FLUTTER_CARD_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => FlutterCard(
          title: FLUTTER_CARD_SCREEN_TITLE,
        ),
      );
      break;

    //flutter card
    case FLUTTER_FLIP_CARD_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => FlutterFlipCard(
          title: FLUTTER_FLIP_CARD_SCREEN_TITLE,
        ),
      );
      break;
    /*--------------------------------- Flutter CARD : End---------------------------------*/
  }
}
