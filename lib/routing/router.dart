import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/flutter_advanced/biometric_auth/biometric_auth.dart';
import 'package:flutter_a2z/screens/flutter_advanced/capture_picture_display_list/capture_picture_display_list.dart';
import 'package:flutter_a2z/screens/flutter_advanced/crud/flutter_crud/flutter_crud.dart';
import 'package:flutter_a2z/screens/flutter_advanced/crud/flutter_crud_add/flutter_crud_add.dart';
import 'package:flutter_a2z/screens/flutter_advanced/expandable_drawer/expandable_drawer.dart';
import 'package:flutter_a2z/screens/flutter_advanced/flutter_advanced.dart';
import 'package:flutter_a2z/screens/flutter_advanced/flutter_form/flutter_form.dart';
import 'package:flutter_a2z/screens/flutter_advanced/flutter_key_details/flutter_key_details.dart';
import 'package:flutter_a2z/screens/flutter_advanced/flutter_progressbar/flutter_progressbar.dart';
import 'package:flutter_a2z/screens/flutter_advanced/my_custom_paint/my_custom_paint.dart';
import 'package:flutter_a2z/screens/flutter_advanced/responsive_text/responsive_text.dart';
import 'package:flutter_a2z/screens/flutter_lifecycle/flutter_lifecycle.dart';
import 'package:flutter_a2z/screens/flutter_lifecycle/stateful_widget/stateful_widget_lifecycle.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_carousel_slider/flutter_carousel_slider.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_grouped_list/flutter_grouped_list.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_packages.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_reaction_button/flutter_reaction_button.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_reorderables/flutter_nested_reorderable_wrap/flutter_nested_reorderable_wrap.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_reorderables/flutter_reorderable_column/flutter_reorderable_column.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_reorderables/flutter_reorderable_row/flutter_reorderable_row.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_reorderables/flutter_reorderable_sliverList/flutter_reorderable_sliver_list.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_reorderables/flutter_reorderable_table/flutter_reorderable_table.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_reorderables/flutter_reorderable_wrap/flutter_reorderable_wrap.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_reorderables/flutter_reorderables.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_web_view/flutter_web_view.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_web_view/flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_web_view/webview_flutter/webview_flutter.dart';
import 'package:flutter_a2z/screens/flutter_widgets/alert_dialog/default_dialog/default_dialog.dart';
import 'package:flutter_a2z/screens/flutter_widgets/alert_dialog/dialog_with_full_image/dialog_with_full_image.dart';
import 'package:flutter_a2z/screens/flutter_widgets/alert_dialog/dialog_with_input_field/dialog_with_input_field.dart';
import 'package:flutter_a2z/screens/flutter_widgets/alert_dialog/fullscren_dialog/fullscreen_dialog_page.dart';
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
import 'package:flutter_a2z/screens/flutter_widgets/cards/card_with_image_and_text/card_with_image_and_text.dart';
import 'package:flutter_a2z/screens/flutter_widgets/cards/card_with_rounded_corner/card_with_rounded_corner.dart';
import 'package:flutter_a2z/screens/flutter_widgets/cards/card_with_stack/card_with_stack.dart';
import 'package:flutter_a2z/screens/flutter_widgets/cards/card_with_top_circle/card_with_top_circle.dart';
import 'package:flutter_a2z/screens/flutter_widgets/cards/flutter_card.dart';
import 'package:flutter_a2z/screens/flutter_widgets/cards/flutter_flip_card/flutter_flip_card.dart';
import 'package:flutter_a2z/screens/flutter_widgets/datetime_picker/date_picker/date_picker.dart';
import 'package:flutter_a2z/screens/flutter_widgets/datetime_picker/date_range_picker/date_range_picker.dart';
import 'package:flutter_a2z/screens/flutter_widgets/datetime_picker/date_time_picker/date_time_picker.dart';
import 'package:flutter_a2z/screens/flutter_widgets/datetime_picker/flutter_date_time_picker.dart';
import 'package:flutter_a2z/screens/flutter_widgets/datetime_picker/time_picker/time_picker.dart';
import 'package:flutter_a2z/screens/flutter_widgets/expandable_element/expandable_element.dart';
import 'package:flutter_a2z/screens/flutter_widgets/expandable_element/expandable_listview/expandable_listview.dart';
import 'package:flutter_a2z/screens/flutter_widgets/expandable_element/expandable_panel_widget/expandable_panel_widget.dart';
import 'package:flutter_a2z/screens/flutter_widgets/expandable_element/expandable_widget/expandable_widget.dart';
import 'package:flutter_a2z/screens/flutter_widgets/expandable_element/expansion_tile/expansion_tile.dart';
import 'package:flutter_a2z/screens/flutter_widgets/flutter_chip_all/flutter_chip_all.dart';
import 'package:flutter_a2z/screens/flutter_widgets/flutter_reorderable_list/flutter_reorderable_list.dart';
import 'package:flutter_a2z/screens/flutter_widgets/tab_view_layout/tab_view_layout.dart';
import 'package:flutter_a2z/screens/flutter_widgets/tables/flutter_data_table/flutter_data_table.dart';
import 'package:flutter_a2z/screens/flutter_widgets/tables/flutter_table.dart';
import 'package:flutter_a2z/screens/flutter_widgets/tables/table_with_pagination/table_with_pagination.dart';
import 'package:flutter_a2z/screens/home/home_screen.dart';
import 'package:flutter_a2z/screens/login/login_screen.dart';
import 'package:flutter_a2z/screens/sign_up/sign_up_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    //---------------------------------Login: Start--------------------------------------------
    case LOGIN_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(
          title: LOGIN_SCREEN_TITLE,
        ),
      );
      break;
    //---------------------------------Login: End----------------------------------------------

    //---------------------------------SignUp: Start-------------------------------------------
    case SIGN_UP_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const SignUpScreen(
          title: SIGN_UP_SCREEN__TITLE,
        ),
      );
    //---------------------------------SignUp: End---------------------------------------------

    //---------------------------------HomeScreen: Start---------------------------------------
    case HOME_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(
          title: HOME_SCREEN_TITLE,
        ),
      );
      break;
    //---------------------------------HomeScreen: End-----------------------------------------

    //---------------------------------FlutterAdvanced: Start----------------------------------
    //FlutterAdvanced
    case FLUTTER_ADVANCED_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterAdvanced(
          title: FLUTTER_ADVANCED_SCREEN_TITLE,
        ),
      );
      break;

    //BiometricAuth
    case FLUTTER_BIOMETRIC_AUTH_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const BiometricAuth(
          title: FLUTTER_BIOMETRIC_AUTH_SCREEN_TITLE,
        ),
      );

    //drawer_with_expandable_list_view
    case EXPANDABLE_DRAWER_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const ExpandableDrawer(
          title: EXPANDABLE_DRAWER_SCREEN_TITLE,
        ),
      );

    //responsive_text
    case RESPONSIVE_TEXT_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const ResponsiveText(
          title: RESPONSIVE_TEXT_SCREEN_TITLE,
        ),
      );

    //form_validation
    case FLUTTER_FORM_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterForm(
          title: FLUTTER_FORM_SCREEN_TITLE,
        ),
      );

    //custom_paint
    case MY_CUSTOM_PAINT_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyCustomPaint(
          title: MY_CUSTOM_PAINT_SCREEN_TITLE,
        ),
      );

    //flutter_key_details
    case FLUTTER_KEY_DETAILS_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterKeyDetails(
          title: FLUTTER_KEY_DETAILS_SCREEN_TITLE,
        ),
      );
    //---------------------------------FlutterProgressbar: Start-------------------------------
    //flutter_progressbar
    case FLUTTER_PROGRESSBAR_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterProgressbar(
          title: FLUTTER_PROGRESSBAR_SCREEN_TITLE,
        ),
      );
    //---------------------------------FlutterProgressbar: End---------------------------------

    //capture_picture_display_list
    case CAPTURE_PICTURE_DISPLAY_LIST_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const CapturePictureDisplayList(
          title: CAPTURE_PICTURE_DISPLAY_LIST_TITLE,
        ),
      );
    //=================================FlutterAdvanced: End====================================

    //---------------------------------FlutterButton: Start------------------------------------
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
    //---------------------------------FlutterButton: End--------------------------------------

    //---------------------------------FlutterBottomNavigationView: Start----------------------
    case FLUTTER_BOTTOM_NAVIGATION_VIEW_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyBottomNavigation(
          title: FLUTTER_BOTTOM_NAVIGATION_VIEW_SCREEN_TITLE,
        ),
      );
    //---------------------------------FlutterBottomNavigationView: End------------------------

    //---------------------------------TabViewLayout: Start -----------------------------------
    case FLUTTER_TAB_VIEW_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const TabViewLayout(
          title: FLUTTER_TAB_VIEW_SCREEN_TITLE,
        ),
      );
      break;
    //---------------------------------TabViewLayout: End -------------------------------------

    //---------------------------------FlutterCRUD: Start--------------------------------------
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
    //---------------------------------FlutterCRUD: End----------------------------------------

    //---------------------------------FlutterCARD: Start--------------------------------------
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
    case CARD_WITH_BANNER_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const CardWithBanner(
          title: CARD_WITH_BANNER_SCREEN_TITLE,
        ),
      );
      break;

    //Card With Banner
    case CARD_WITH_STACK_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const CardWithStack(
          title: CARD_WITH_STACK_SCREEN_TITLE,
        ),
      );
      break;

    //card_with_folder_effect
    case CARD_WITH_FOLDER_EFFECT_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const CardWithFolderEffect(
          title: CARD_WITH_FOLDER_EFFECT_SCREEN_TITLE,
        ),
      );
      break;

    //card_with_rounded_corner
    case CARD_WITH_ROUNDED_CORNER_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const CardWithRoundedCorner(
          title: CARD_WITH_ROUNDED_CORNER_SCREEN_TITLE,
        ),
      );
      break;

    //card_with_rounded_corner
    case CARD_WITH_TOP_CIRCLE_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const CardWithTopCircle(
          title: CARD_WITH_TOP_CIRCLE_SCREEN_TITLE,
        ),
      );
      break;

    //card_with_image_and_text
    case CARD_WITH_IMAGE_AND_TEXT_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const CardWithImageAndText(
          title: CARD_WITH_IMAGE_AND_TEXT_SCREEN_TITLE,
        ),
      );
      break;
    //---------------------------------FlutterCARD: End----------------------------------------

    //---------------------------------FlutterAlertDialog: Start-------------------------------
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
    //---------------------------------FlutterAlertDialog: End---------------------------------

    //---------------------------------FlutterLifecycle: Start---------------------------------
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
    //---------------------------------FlutterLifecycle: End-----------------------------------

    //---------------------------------FlutterChip: Start--------------------------------------
    case FLUTTER_CHIP_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterChipAll(
          title: FLUTTER_CHIP_SCREEN_TITLE,
        ),
      );
    //---------------------------------FlutterChip: End----------------------------------------

    //=================================FlutterPackages: Start==================================
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

    //flutter_grouped_list
    case FLUTTER_GROUPED_LIST_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterGroupedList(
          title: FLUTTER_GROUPED_LIST_SCREEN_TITLE,
        ),
      );

    //carousel_slider
    case FLUTTER_CAROUSEL_SLIDER_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterCarouselSlider(
          title: FLUTTER_CAROUSEL_SLIDER_SCREEN_TITLE,
        ),
      );

    //---------------------------------ReOrderAbles: Start-------------------------------------
    //reorderables
    case FLUTTER_REORDERABLES_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterReOrderAbles(
          title: FLUTTER_REORDERABLES_SCREEN_TITLE,
        ),
      );

    //flutter_reorderable_sliverList
    case FLUTTER_REORDERABLES_SILVERLIST_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterReorderableSliverList(
          title: FLUTTER_REORDERABLES_SILVERLIST_TITLE,
        ),
      );

    //flutter_reorderable_table
    case FLUTTER_REORDERABLES_TABLE_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterReorderableTable(
          title: FLUTTER_REORDERABLES_TABLE_TITLE,
        ),
      );

    //flutter_reorderable_wrap
    case FLUTTER_REORDERABLES_WRAP_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterReorderableWrap(
          title: FLUTTER_REORDERABLES_WRAP_TITLE,
        ),
      );

    //flutter_nested_eorderable_wrap
    case FLUTTER_NESTED_REORDERABLES_WRAP_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterNestedReorderableWrap(
          title: FLUTTER_NESTED_REORDERABLES_WRAP_TITLE,
        ),
      );

    //flutter_reorderable_column
    case FLUTTER_REORDERABLES_COLUMN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterReorderablColumn(
          title: FLUTTER_REORDERABLES_COLUMN_TITLE,
        ),
      );

    //flutter_reorderable_row
    case FLUTTER_REORDERABLES_ROW_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterReorderableRow(
          title: FLUTTER_REORDERABLES_ROW_TITLE,
        ),
      );

    //flutter_reorderable_list
    case FLUTTER_REORDERABLES_LIST_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterReorderableList(
          title: FLUTTER_REORDERABLES_LIST_TITLE,
        ),
      );
    //---------------------------------ReOrderAbles: End---------------------------------------

    //---------------------------------flutter_web_view: Start---------------------------------
    //flutter_webview
    case FLUTTER_WEB_VIEW_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterWebView(
          title: FLUTTER_WEB_VIEW_SCREEN_TITLE,
        ),
      );

    //webview_flutter
    case WEB_VIEW_FLUTTER_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const WebViewFlutter(
          title: WEB_VIEW_FLUTTER_SCREEN_TITLE,
        ),
      );

    //flutter_webview_plugin
    case FLUTTER_WEBVIEW_PLUGIN_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterWebViewPlugin(
          title: FLUTTER_WEBVIEW_PLUGIN_SCREEN_TITLE,
        ),
      );

    //---------------------------------flutter_web_view: End-----------------------------------
    //=================================FlutterPackages: End====================================

    //--------------
    // -------------------ExpandableElement: Start--------------------------------
    //expandable element
    case EXPANDABLE_ELEMENT_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const ExpandableElement(
          title: EXPANDABLE_ELEMENT_SCREEN_TITLE,
        ),
      );

    //expandable listView
    case EXPANDABLE_LIST_VIEW_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const ExpandableListView(
          title: EXPANDABLE_LIST_VIEW_SCREEN_TITLE,
        ),
      );

    //ExpansionTile
    case EXPANSION_TILE__SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyExpansionTile(
          title: EXPANSION_TILE__SCREEN_TITLE,
        ),
      );

    //ExpandablePanelWidget
    case EXPANDABLE_PANEL_WIDGET_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyExpandablePanelWidget(
          title: EXPANDABLE_PANEL_WIDGET_SCREEN_TITLE,
        ),
      );

    //ExpandableWidget
    case EXPANDABLE_WIDGET_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyExpandableWidget(
          title: EXPANDABLE_WIDGET_SCREEN_TITLE,
        ),
      );

    //-----------------------------------ExpandableElement: End--------------------------------

    //-----------------------------------FlutterTable: Start-----------------------------------
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
    //------------------------------------FlutterTable: End------------------------------------

    //------------------------------------DateTimePicker: Start--------------------------------
    //flutterDateTime picker
    case FLUTTER_DATETIME_PICKER_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const FlutterDateTimePicker(
          title: FLUTTER_DATETIME_PICKER_SCREEN_TITLE,
        ),
      );

    //datePicker
    case MY_DATE_PICKER_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyDatePicker(
          title: MY_DATE_PICKER_SCREEN_TITLE,
        ),
      );

    //timePicker
    case MY_TIME_PICKER_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyTimePicker(
          title: MY_TIME_PICKER_SCREEN_TITLE,
        ),
      );

    //dateTimePicker
    case DATETIME_PICKER_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyDateTimePicker(
          title: DATETIME_PICKER_SCREEN_TITLE,
        ),
      );

    //dateRangePicker
    case DATE_RANGE_PICKER_SCREEN_ROUTE:
      return MaterialPageRoute(
        builder: (context) => const MyDateRangePicker(
          title: DATE_RANGE_PICKER_SCREEN_TITLE,
        ),
      );
    //---------------------------------DateTimePicker: End-------------------------------------

    default:
      return null;
      break;
  }
}
