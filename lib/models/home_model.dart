import 'package:flutter/material.dart';
import 'package:flutter_a2z/models/flutter_advanced_model.dart';
import 'package:flutter_a2z/models/flutter_complex_widget_model.dart';
import 'package:flutter_a2z/models/flutter_packages_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/flutter_widget_catalog_model_details.dart';
import 'package:flutter_a2z/models/local_storage_model.dart';
import 'package:flutter_a2z/models/map_details/map_details_model.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeModel {
  String name;
  IconData icon;
  String details;
  int numberOfElements;

  HomeModel({
    required this.name,
    required this.icon,
    required this.details,
    required this.numberOfElements,
  });

  static List<HomeModel> fetchAll() => <HomeModel>[
        HomeModel(
          name: flutterWidgetCatalogTitle,
          icon: Icons.widgets,
          details: '',
          numberOfElements: FlutterWidgetCatalogModelDetails.fetchAll().length,
        ),
        HomeModel(
          name: flutterComplexWidgetTitle,
          icon: Icons.handyman_rounded,
          details: '',
          numberOfElements: FlutterComplexWidgetModel.fetchAll().length,
        ),
        HomeModel(
          name: flutterLayoutsTitle,
          icon: Icons.layers_sharp,
          details: '',
          numberOfElements: 0,
        ),
        HomeModel(
          name: flutterAdvancedTitle,
          icon: FontAwesomeIcons.adversal,
          details: '',
          numberOfElements: FlutterAdvancedModel.fetchAll().length,
        ),
        HomeModel(
          name: flutterPackagesTitle,
          icon: Icons.backpack,
          details: '',
          numberOfElements: FlutterPackagesModel.fetchAll().length,
        ),
        HomeModel(
          name: apiIntegrationTitle,
          icon: Icons.api,
          details: '',
          numberOfElements: 0,
        ),
        HomeModel(
          name: localStorageTitle,
          icon: FontAwesomeIcons.database,
          details: '',
          numberOfElements: LocalStorageModel.fetchAll().length,
        ),
        HomeModel(
          name: firebaseTitle,
          icon: Icons.local_fire_department,
          details: '',
          numberOfElements: 0,
        ),
        HomeModel(
          name: mapDetailsTitle,
          icon: Icons.pin_drop_sharp,
          details: '',
          numberOfElements: MapDetailsModel.fetchAll().length,
        ),
        HomeModel(
          name: notificationTitle,
          icon: Icons.notifications_active_rounded,
          details: '',
          numberOfElements: 0,
        ),
        HomeModel(
          name: livestreamTitle,
          icon: Icons.video_call_sharp,
          details: '',
          numberOfElements: 0,
        ),
      ];
}
