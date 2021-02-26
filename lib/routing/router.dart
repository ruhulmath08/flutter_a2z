import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/flutter_advanced/biometric_auth/biometric_auth.dart';
import 'package:flutter_a2z/screens/flutter_advanced/crud/flutter_crud/flutter_crud.dart';
import 'package:flutter_a2z/screens/flutter_advanced/crud/flutter_crud_add/flutter_crud_add.dart';
import 'package:flutter_a2z/screens/flutter_lifecycle/flutter_lifecycle.dart';
import 'package:flutter_a2z/screens/flutter_lifecycle/stateful_widget/stateful_widget_lifecycle.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_packages.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_reaction_button/flutter_reaction_button.dart';
import 'package:flutter_a2z/screens/flutter_widgets/alert_dialog/default_dialog/default_dialog.dart';
import 'package:flutter_a2z/screens/flutter_widgets/alert_dialog/dialog_with_full_image/dialog_with_full_image.dart';
import 'package:flutter_a2z/screens/flutter_widgets/alert_dialog/dialog_with_input_field/dialog_with_input_field.dart';
import 'package:flutter_a2z/screens/flutter_widgets/alert_dialog/fullscren_dialog/fullscreen_dialog.dart';
import 'package:flutter_a2z/screens/flutter_widgets/alert_dialog/my_alert_dialog.dart';
import 'package:flutter_a2z/screens/flutter_widgets/alert_dialog/top_circle_image_dialog/top_circle_image_dialog.dart';
import 'package:flutter_a2z/screens/flutter_widgets/bottom_navigaion/my_bottom_navigation.dart';
import 'package:flutter_a2z/screens/flutter_widgets/buttons/flutter_buttons.dart';
import 'package:flutter_a2z/screens/flutter_widgets/buttons/my_checkbox/my_check_box.dart';
import 'package:flutter_a2z/screens/flutter_widgets/buttons/my_dropdown_button/my_dropdown_button.dart';
import 'package:flutter_a2z/screens/flutter_widgets/buttons/my_popup_menu_button/my_popup_menu_button.dart';
import 'package:flutter_a2z/screens/flutter_widgets/buttons/my_radio_button/my_radio_button.dart';
import 'package:flutter_a2z/screens/flutter_widgets/buttons/my_toggle_button/my_toggle_button.dart';
import 'package:flutter_a2z/screens/flutter_widgets/cards/card_with_banner/card_with_banner.dart';
import 'package:flutter_a2z/screens/flutter_widgets/cards/card_with_folder_effect/card_with_folder_effect.dart';
import 'package:flutter_a2z/screens/flutter_widgets/cards/card_with_rounded_corner/card_with_rounded_corner.dart';
import 'package:flutter_a2z/screens/flutter_widgets/cards/card_with_stack/card_with_stack.dart';
import 'package:flutter_a2z/screens/flutter_widgets/cards/card_with_top_circle/card_with_top_circle.dart';
import 'package:flutter_a2z/screens/flutter_widgets/cards/flutter_card.dart';
import 'package:flutter_a2z/screens/flutter_widgets/cards/flutter_flip_card/flutter_flip_card.dart';
import 'package:flutter_a2z/screens/flutter_widgets/expandable_element/expandable_element.dart';
import 'package:flutter_a2z/screens/flutter_widgets/expandable_element/expansion_tile/expansion_tile.dart';
import 'package:flutter_a2z/screens/flutter_widgets/flutter_chip_all/flutter_chip_all.dart';
import 'package:flutter_a2z/screens/flutter_widgets/tab_view_layout/tab_view_layout.dart';
import 'package:flutter_a2z/screens/flutter_widgets/tables/flutter_data_table/flutter_data_table.dart';
import 'package:flutter_a2z/screens/flutter_widgets/tables/flutter_table.dart';
import 'package:flutter_a2z/screens/flutter_widgets/tables/table_with_pagination/table_with_pagination.dart';
import 'package:flutter_a2z/screens/home/home_screen.dart';
import 'package:flutter_a2z/screens/login/login_screen.dart';
import 'package:flutter_a2z/screens/sign_up/sign_up_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    /*--------------------------------- Login : Start---------------------------------*/
    case LOGIN_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(
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
        builder: (context) => const HomeScreen(
          title: HOME_SCREEN_TITLE,
        ),
      );
      break;
    /*--------------------------------- HomeScreen : End---------------------------------*/

    /*--------------------------------- Flutter Button : Start---------------------------------*/
    //button
    case FLUTTER_BUTTON_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterButton(
          title: FLUTTER_BUTTON_SCREEN_TITLE,
        ),
      );
      break;

    //radio button
    case FLUTTER_RADIOBUTTON_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyRadioButton(
          title: FLUTTER_RADIOBUTTON_SCREEN_TITLE,
        ),
      );
      break;

    //checkbox
    case FLUTTER_CHECKBOX_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyCheckBox(
          title: FLUTTER_CHECKBOX_SCREEN_TITLE,
        ),
      );
      break;

    //toggle button
    case FLUTTER_TOGGLE_BUTTON_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyToggleButton(
          title: FLUTTER_TOGGLE_BUTTON__SCREEN_TITLE,
        ),
      );
      break;

    //dropdown button
    case FLUTTER_DROPDOWN_BUTTON_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyDropdownButton(
          title: FLUTTER_DROPDOWN_BUTTON_SCREEN_TITLE,
        ),
      );
      break;

    //popup button
    case FLUTTER_POPUP_MENU_BUTTON_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyPopupMenuButton(
          title: FLUTTER_POPUP_MENU_BUTTON_SCREEN_TITLE,
        ),
      );
      break;
    /*--------------------------------- Flutter Button : End---------------------------------*/

    /*--------------------------------- Flutter BottomNavigationView : Start---------------------------------*/
    case FLUTTER_BOTTOM_NAVIGATION_VIEW_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyBottomNavigation(
          title: FLUTTER_BOTTOM_NAVIGATION_VIEW_SCREEN_TITLE,
        ),
      );
    /*--------------------------------- Flutter BottomNavigationView : End---------------------------------*/

    /*--------------------------------- TabViewLayout : Start ---------------------------------*/
    case FLUTTER_TAB_VIEW_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const TabViewLayout(
          title: FLUTTER_TAB_VIEW_SCREEN_TITLE,
        ),
      );
      break;
    /*--------------------------------- TabViewLayout : End ---------------------------------*/

    /*--------------------------------- Flutter CRUD : Start---------------------------------*/
    //flutter CRUD
    case FLUTTER_CRUD_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterCrud(
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
        builder: (context) => const FlutterCard(
          title: FLUTTER_CARD_SCREEN_TITLE,
        ),
      );
      break;

    //flutter card
    case FLUTTER_FLIP_CARD_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterFlipCard(
          title: FLUTTER_FLIP_CARD_SCREEN_TITLE,
        ),
      );
      break;

    //Card With Banner
    case CARD_WITH_BANNER_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const CardWithBanner(
          title: CARD_WITH_BANNER_SCREEN,
        ),
      );
      break;

    //Card With Banner
    case CARD_WITH_STACK_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const CardWithStack(
          title: CARD_WITH_STACK_SCREEN,
        ),
      );
      break;

    //card_with_folder_effect
    case CARD_WITH_FOLDER_EFFECT_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const CardWithFolderEffect(
          title: CARD_WITH_FOLDER_EFFECT_SCREEN,
        ),
      );
      break;

    //card_with_rounded_corner
    case CARD_WITH_ROUNDED_CORNER_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const CardWithRoundedCorner(
          title: CARD_WITH_ROUNDED_CORNER_SCREEN,
        ),
      );
      break;

    //card_with_rounded_corner
    case CARD_WITH_TOP_CIRCLE_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const CardWithTopCircle(
          title: CARD_WITH_TOP_CIRCLE_SCREEN,
        ),
      );
      break;
    /*--------------------------------- Flutter CARD : End---------------------------------*/

    /*--------------------------------- Flutter AlertDialog : Start---------------------------------*/
    //flutter dialog
    case FLUTTER_DIALOG_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyAlertDialog(
          title: FLUTTER_DIALOG_SCREEN_TITLE,
        ),
      );
      break;

    //FullscreenDialog
    case FULL_SCREEN_DIALOG_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyFullscreenDialog(
          title: FULL_SCREEN_DIALOG_SCREEN_TITLE,
        ),
      );
      break;

    //default dialog
    case DEFAULT_DIALOG_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const DefaultDialog(
          title: DEFAULT_DIALOG_SCREEN_TITLE,
        ),
      );
      break;

    //flutter dialog with top_circle_image
    case TOP_CIRCLE_IMAGE_DIALOG_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const TopCircleImageDialog(
          title: TOP_CIRCLE_IMAGE_DIALOG_SCREEN_TITLE,
        ),
      );
      break;

    //dialog with InputField
    case DIALOG_WITH_INPUT_FIELD_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const DialogWithInputField(
          title: DIALOG_WITH_INPUT_FIELD_SCREEN_TITLE,
        ),
      );
      break;

    //dialog with full image
    case DIALOG_WITH_FULL_IMAGE_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const DialogWithFullImage(
          title: DIALOG_WITH_FULL_IMAGE_SCREEN_TITLE,
        ),
      );
      break;
    /*--------------------------------- Flutter AlertDialog : End---------------------------------*/

    /*--------------------------------- Flutter Lifecycle : Start---------------------------------*/
    //flutter lifecycle
    case FLUTTER_LIFECYCLE_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterLifecycle(
          title: FLUTTER_LIFECYCLE_SCREEN_TITLE,
        ),
      );

    //flutter stateful_widgets_lifecycle
    case STATEFUL_WIDGET_LIFECYCLE_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const StatefulWidgetLifecycle(
          title: STATEFUL_WIDGET_LIFECYCLE_SCREEN_TITLE,
        ),
      );
    /*--------------------------------- Flutter Lifecycle : End---------------------------------*/

    /*--------------------------------- Flutter Chip : Start---------------------------------*/
    case FLUTTER_CHIP_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterChipAll(
          title: FLUTTER_CHIP_SCREEN_TITLE,
        ),
      );
    /*--------------------------------- Flutter Chip : End---------------------------------*/

    /*--------------------------------- Flutter BiometricAuth : Start---------------------------------*/
    case FLUTTER_BIOMETRIC_AUTH_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const BiometricAuth(
          title: FLUTTER_BIOMETRIC_AUTH_SCREEN_TITLE,
        ),
      );
    /*--------------------------------- Flutter BiometricAuth : End---------------------------------*/

    /*----------------------------------- FlutterPackages : Start-----------------------------------*/
    case FLUTTER_PACKAGES_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterPackages(
          title: FLUTTER_PACKAGES_SCREEN_TITLE,
        ),
      );

    //flutter_reaction_button
    case FLUTTER_REACTION_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyFlutterReactionButton(
          title: FLUTTER_REACTION_SCREEN_TITLE,
        ),
      );
    /*------------------------------------ FlutterPackages : End------------------------------------*/

    /*---------------------------------- ExpandableElement : Start ---------------------------------*/
    //expandable element
    case EXPANDABLE_ELEMENT_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const ExpandableElement(
          title: EXPANDABLE_ELEMENT_SCREEN_TITLE,
        ),
      );

    //ExpandableList

    //ExpansionTile

    //ListTile
    case EXPANSION_TILE__SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyExpansionTile(
          title: EXPANSION_TILE__SCREEN_TITLE,
        ),
      );
    /*----------------------------------- ExpandableElement : End ----------------------------------*/
  
    /*----------------------------------- FlutterTable : Start ----------------------------------*/
  //FlutterTable
    case FLUTTER_TABLE_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterTable(
          title: FLUTTER_TABLE_SCREEN_TITLE,
        ),
      );

  //FlutterDataTable'
    case FLUTTER_DATA_TABLE_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyDataTable(
          title: FLUTTER_DATA_TABLE_SCREEN_TITLE,
        ),
      );

  //TableWithPagination
    case TABLE_WITH_PAGINATION_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const TableWithPagination(
          title: TABLE_WITH_PAGINATION_SCREEN_TITLE,
        ),
      );
   /*------------------------------------ FlutterTable : End -----------------------------------*/
    default:
      return null;
      break;
  }
}
