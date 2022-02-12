import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/flutter_advanced/flutter_advanced.dart';
import 'package:flutter_a2z/screens/flutter_advanced/flutter_location_as_service/flutter_location_as_service_screen.dart';
import 'package:flutter_a2z/screens/flutter_advanced/flutter_stream/flutter_stream_screen.dart';
import 'package:flutter_a2z/screens/flutter_advanced/isolates_and_multithreading/isolates_and_multithreading_screen.dart';
import 'package:flutter_a2z/screens/flutter_advanced/method_channel/method_channel_screen.dart';
import 'package:flutter_a2z/screens/flutter_advanced/pixel_perfect_responsive_ui/pixel_perfect_responsive_ui_screen.dart';
import 'package:flutter_a2z/screens/flutter_complex_widget/control_multiple_animations/control_multiple_animations.dart';
import 'package:flutter_a2z/screens/flutter_complex_widget/flutter_complex_widget.dart';
import 'package:flutter_a2z/screens/flutter_complex_widget/flutter_focus/flutter_focus.dart';
import 'package:flutter_a2z/screens/flutter_complex_widget/mask_text_with_image/mask_text_with_image_screen.dart';
import 'package:flutter_a2z/screens/flutter_complex_widget/set_state_in_alert_dialog/set_state_in_alert_dialog_screen.dart';
import 'package:flutter_a2z/screens/flutter_complex_widget/transparent_app_bar/transparent_app_bar.dart';
import 'package:flutter_a2z/screens/flutter_packages/camera/camera_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/connectivity_plus/connectivity_plus_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_a2z/screens/flutter_packages/device_info_plus/device_info_plus_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/file_picker/flutter_file_picker.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_barcode_scanner/flutter_barcode_scanner_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_countdown_timer/flutter_countdown_timer_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_heat_map/flutter_heat_map_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_holo_date_picker/flutter_holo_date_picker_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_packages.dart';
import 'package:flutter_a2z/screens/flutter_packages/flutter_photo_view/flutter_photo_view.dart';
import 'package:flutter_a2z/screens/flutter_packages/font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_a2z/screens/flutter_packages/horizontal_data_table/horizontal_data_table_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/huawei_location/huawei_location_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/image_picker/image_picker_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/network_info_plus/network_info_plus_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/package_info_plus/package_info_plus_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/permission_handler/permission_handler%20_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/rotated_corner_decoration/rotated_corner_decoration_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/speech_to_text/speech_to_text_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/store_redirect/store_redirect.dart';
import 'package:flutter_a2z/screens/flutter_packages/syncfusion_flutter_data_grid/syncfusion_flutter_data_grid.dart';
import 'package:flutter_a2z/screens/flutter_packages/syncfusion_flutter_gauges/syncfusion_flutter_gauges_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/telephony/telephony_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/url_launcher/url_launcher_screen.dart';
import 'package:flutter_a2z/screens/flutter_packages/wifi_iot/wifi_iot_screen.dart';
import 'package:flutter_a2z/screens/flutter_widget_catalog/flutter_widget_catalog/flutter_widget_catalog.dart';
import 'package:flutter_a2z/screens/flutter_widget_catalog/material_components/app_structure_and_navigation/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:flutter_a2z/screens/home/home_screen.dart';
import 'package:flutter_a2z/screens/local_storage/flutter_shared_preferences/flutter_shared_preferences_screen.dart';
import 'package:flutter_a2z/screens/local_storage/flutter_with_hive/flutter_with_hive_screen.dart';
import 'package:flutter_a2z/screens/local_storage/flutter_with_sqlite/flutter_with_sqlite.dart';
import 'package:flutter_a2z/screens/local_storage/local_storage_screen.dart';
import 'package:flutter_a2z/screens/local_storage/read_and_write_file/read_and_write_file.dart';
import 'package:flutter_a2z/screens/login/login_screen.dart';
import 'package:flutter_a2z/screens/map_details/map_details_screen.dart';
import 'package:flutter_a2z/screens/map_details/osm_map/osm_map_screen.dart';
import 'package:flutter_a2z/screens/sign_up/sign_up_screen.dart';

Route<MaterialPageRoute>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    //login
    case loginScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );

    //sign_up
    case signUpScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      );

    //home
    case homeScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );

    //---------------------------------flutter_advanced: Start---------------------------
    //flutter_advanced
    case flutterAdvancedRoute:
      return MaterialPageRoute(
        builder: (context) => FlutterAdvancedScreen(
          title: flutterAdvancedTitle,
          model: settings.arguments!,
        ),
      );

    //method_channel
    case methodChannelRoute:
      return MaterialPageRoute(
        builder: (context) => MethodChannelScreen(
          title: methodChannelTitle,
          model: settings.arguments!,
        ),
      );

    //pixel_perfect_responsive_ui
    case pixelPerfectResponsiveUiRoute:
      return MaterialPageRoute(
        builder: (context) => PixelPerfectResponsiveUiScreen(
          title: pixelPerfectResponsiveUiTitle,
          model: settings.arguments!,
        ),
      );

    //isolates_and_multithreading
    case isolateAndMultithreadingRoute:
      return MaterialPageRoute(
        builder: (context) => IsolatesAndMultithreadingScreen(
          title: isolateAndMultithreadingTitle,
          model: settings.arguments!,
        ),
      );

    //flutter_location_as_service
    case flutterLocationAsServiceRoute:
      return MaterialPageRoute(
        builder: (context) => FlutterLocationAsServiceScreen(
          title: flutterLocationAsServiceTitle,
          model: settings.arguments!,
        ),
      );

    //flutter_stream
    case flutterStreamRoute:
      return MaterialPageRoute(
        builder: (context) => FlutterStreamScreen(
          title: flutterStreamTitle,
          model: settings.arguments!,
        ),
      );
    //---------------------------------flutter_advanced: End-----------------------------

    //---------------------------------flutter_complex_widget: Start---------------------
    case flutterComplexWidgetRoute:
      return MaterialPageRoute(
        builder: (context) => const FlutterComplexWidgetScreen(),
      );

    //mask_text_with_image
    case maskTextWithImageRoute:
      return MaterialPageRoute(
        builder: (context) => MaskTextWithImageScreen(
          title: maskTextWithImageTitle,
          model: settings.arguments!,
        ),
      );

    //control_multiple_animations
    case controlMultipleAnimationRoute:
      return MaterialPageRoute(
        builder: (context) => ControlMultipleAnimations(
          title: controlMultipleAnimationTitle,
          model: settings.arguments!,
        ),
      );

    //set_state_in_alert_dialog
    case setStateInPopUpAlertDialogRoute:
      return MaterialPageRoute(
        builder: (context) => SetStateInAlertDialogScreen(
          title: setStateInPopUpAlertDialogTitle,
          model: settings.arguments!,
        ),
      );

    //flutter_focus
    case flutterFocusRoute:
      return MaterialPageRoute(
        builder: (context) => FlutterFocusScreen(
          title: flutterFocusTitle,
          model: settings.arguments!,
        ),
      );

    //transparent_app_bar
    case transparentAppBarRoute:
      return MaterialPageRoute(
        builder: (context) => TransparentAppBar(
          title: transparentAppBarTitle,
          model: settings.arguments!,
        ),
      );
    //---------------------------------flutter_complex_widget: End-----------------------

    //---------------------------------Widgets: Start------------------------------------
    case flutterWidgetCatalogRoute:
      return MaterialPageRoute(
        builder: (context) => const FlutterWidgetCatalogScreen(),
      );
    //---------------------------------material_components: Start------------------------
    //---------------------------------app_structure_and_navigation: Start---------------
    //bottom_navigation_bar
    case bottomNavigationBarRoute:
      return MaterialPageRoute(
        builder: (context) => const BottomNavigationBarScreen(
          title: bottomNavigationBarTitle,
        ),
      );
    //---------------------------------app_structure_and_navigation: End-----------------
    //---------------------------------material_components: End--------------------------
    //---------------------------------Widgets: End--------------------------------------

    //---------------------------------Package: Start------------------------------------
    case flutterPackagesRoute:
      return MaterialPageRoute(
        builder: (context) => const FlutterPackages(),
      );

    //font_awesome_flutter
    case fontAwesomeFlutterRoute:
      return MaterialPageRoute(
        builder: (context) => FontAwesomeFlutterScreen(
          title: fontAwesomeFlutterTitle,
          model: settings.arguments!,
        ),
      );

    //curved_navigation_bar
    case curvedNavigationBarRoute:
      return MaterialPageRoute(
        builder: (context) => CurvedNavigationBarScreen(
          title: curvedNavigationBarTitle,
          model: settings.arguments!,
        ),
      );

    //file_picker
    case filePickerRoure:
      return MaterialPageRoute(
        builder: (context) => FlutterFilePickerScreen(),
      );

    //store_redirect
    case storeRedirectRoute:
      return MaterialPageRoute(
        builder: (context) => StoreRedirectScreen(
          title: storeRedirectTitle,
          model: settings.arguments!,
        ),
      );

    //url_launcher
    case urlLauncherRoute:
      return MaterialPageRoute(
        builder: (context) => UrlLauncherScreen(
          title: urlLauncherTitle,
          model: settings.arguments!,
        ),
      );

    ////syncfusion_flutter_data_grid
    case syncfusionFlutterDataGridRoute:
      return MaterialPageRoute(
        builder: (context) => SyncfusionFlutterDataGridScreen(
          title: syncfusionFlutterDataGridTitle,
          model: settings.arguments!,
        ),
      );

    //horizontal_data_table
    case horizontalDataTableRoute:
      return MaterialPageRoute(
        builder: (context) => HorizontalDataTableScreen(),
      );

    //connectivity_plus
    case connectivityPlusRoute:
      return MaterialPageRoute(
        builder: (context) => ConnectivityPlusScreen(
          title: connectivityPlusTitle,
          model: settings.arguments!,
        ),
      );

    //network_info_plus
    case networkInfoPlusRoute:
      return MaterialPageRoute(
        builder: (context) => NetworkInfoPlusScreen(
          title: networkInfoPlusTitle,
          model: settings.arguments!,
        ),
      );

    //telephony
    case telephonyRoute:
      return MaterialPageRoute(
        builder: (context) => TelephonyScreen(
          title: telephonyTitle,
          model: settings.arguments!,
        ),
      );

    //device_info_plus
    case deviceInfoPlusRoute:
      return MaterialPageRoute(
        builder: (context) => DeviceInfoPlusScreen(
          title: deviceInfoPlusTitle,
          model: settings.arguments!,
        ),
      );

    //package_info_plus
    case packageInfoPlusRoute:
      return MaterialPageRoute(
        builder: (context) => PackageInfoPlusScreen(
          title: packageInfoPlusTitle,
          model: settings.arguments!,
        ),
      );

    //rotated_corner_decoration
    case rotatedCornerDecorationRoute:
      return MaterialPageRoute(
        builder: (context) => RotatedCornerDecorationScreen(
          title: rotatedCornerDecorationTitle,
          model: settings.arguments!,
        ),
      );

    //speech_to_text
    case speechToTextRoute:
      return MaterialPageRoute(
        builder: (context) => SpeechToTextScreen(
          title: speechToTextTitle,
          model: settings.arguments!,
        ),
      );

    //huawei_location
    case huaweiLocationRoute:
      return MaterialPageRoute(
        builder: (context) => HuaweiLocationScreen(
          title: speechToTextTitle,
          model: settings.arguments!,
        ),
      );

    //syncfusion_flutter_gauges
    case syncfusionFlutterGaugesRoute:
      return MaterialPageRoute(
        builder: (context) => SyncfusionFlutterGaugesScreen(
          title: syncfusionFlutterGaugesTitle,
          model: settings.arguments!,
        ),
      );

    //flutter_holo_date_picker
    case flutterHoloDatePickerRoute:
      return MaterialPageRoute(
        builder: (context) => FlutterHoloDatePickerScreen(
          title: flutterHoloDatePickerTitle,
          model: settings.arguments!,
        ),
      );

    //flutter_heat_map
    case flutterHeatMapRoute:
      return MaterialPageRoute(
        builder: (context) => FlutterHeatMapRouteScreen(
          title: flutterHeatMapTitle,
          model: settings.arguments!,
        ),
      );

    //wifi_iot
    case wifiIotRoute:
      return MaterialPageRoute(
        builder: (context) => WifiIotScreen(
          title: wifiIotTitle,
          model: settings.arguments!,
        ),
      );

    //flutter_countdown_timer
    case flutterCountdownTimerRoute:
      return MaterialPageRoute(
        builder: (context) => FlutterCountdownTimer(
          title: flutterCountdownTimerTitle,
          model: settings.arguments!,
        ),
      );

    //permission_handler
    case permissionHandlerRoute:
      return MaterialPageRoute(
        builder: (context) => PermissionHandlerScreen(
          title: permissionHandlerTitle,
          model: settings.arguments!,
        ),
      );

    //flutter_barcode_scanner
    case flutterBarcodeScannerRoute:
      return MaterialPageRoute(
        builder: (context) => FlutterBarcodeScannerScreen(
          title: flutterBarcodeScannerTitle,
          model: settings.arguments!,
        ),
      );

    //flutter_photo_view
    case flutterPhotoViewRoute:
      return MaterialPageRoute(
        builder: (context) => FlutterPhotoView(
          title: flutterPhotoViewTitle,
          model: settings.arguments!,
        ),
      );

    //flutter_camera
    case flutterCameraRoute:
      return MaterialPageRoute(
        builder: (context) => CameraScreen(
          title: flutterCameraTitle,
          model: settings.arguments!,
        ),
      );

    //image_picker
    case imagePickerRoute:
      return MaterialPageRoute(
        builder: (context) => ImagePickerScreen(
          title: imagePickerTitle,
          model: settings.arguments!,
        ),
      );
    //---------------------------------Package: End -------------------------------------

    //---------------------------------local_storage: Start------------------------------
    //local_storage
    case localStorageRoute:
      return MaterialPageRoute(
        builder: (context) => const LocalStorageScreen(
          title: localStorageTitle,
        ),
      );

    //flutter_shared_preferences
    case flutterSharedPreferencesRoute:
      return MaterialPageRoute(
        builder: (context) => FlutterSharedPreferencesScreen(
          title: flutterSharedPreferencesTitle,
          model: settings.arguments!,
        ),
      );

    //flutter_with_sqlite
    case flutterWithSqliteRoute:
      return MaterialPageRoute(
        builder: (context) => FlutterWithSqliteScreen(
          title: flutterWithSqliteTitle,
          model: settings.arguments!,
        ),
      );

    //flutter_with_hive
    case flutterWithHiveRoute:
      return MaterialPageRoute(
        builder: (context) => FlutterWithHiveScreen(
          title: flutterWithHiveTitle,
          model: settings.arguments!,
        ),
      );

    //read_and_write_file
    case readAndWriteFileRoute:
      return MaterialPageRoute(
        builder: (context) => ReadAndWriteFileScreen(
          title: readAndWriteFileTitle,
          model: settings.arguments!,
        ),
      );
    //---------------------------------local_storage: End--------------------------------
    //---------------------------------map_details: Start--------------------------------
    //map_details
    case mapDetailsRoute:
      return MaterialPageRoute(
        builder: (context) => MapDetailsScreen(
          title: mapDetailsTitle,
          model: settings.arguments!,
        ),
      );
    //---------------------------------map_details: End----------------------------------

    //--------------------------------------osm_map: Start-------------------------------
    case osmMapRoute:
      return MaterialPageRoute(
        builder: (context) => OsmMapScreen(
          title: osmMapTitle,
          model: settings.arguments!,
        ),
      );
    //--------------------------------------osm_map: End---------------------------------

    default:
      return null;
  }
}
