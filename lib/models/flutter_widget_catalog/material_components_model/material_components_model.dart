import 'package:flutter_a2z/models/flutter_widget_catalog/layout_widget_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/material_components_model/app_structure_and_navigation_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/material_components_model/buttons_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/material_components_model/dialogs_alerts_and_panels_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/material_components_model/information_displays_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/material_components_model/input_and_selections_model.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class MaterialComponentsModel {
  String name;
  String details;
  int numberOfElements;
  List<MaterialComponentsModel>? subWidget;

  MaterialComponentsModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
    this.subWidget,
  });

  static List<MaterialComponentsModel> fetchAll() => [
        MaterialComponentsModel(
          name: appStructureAndNavigationTitle,
          details:
              '''App structure and navigation contains the most important flutter material components. It contains 11 elements.''',
          numberOfElements: AppStructureAndNavigationModel.fetchAll().length,
        ),
        MaterialComponentsModel(
          name: buttonsTitle,
          details:
              '''Buttons are the graphical control element that provides a user to trigger an event such as taking actions, making choices, searching things, and many more. They can be placed anywhere in our UI like dialogs, forms, cards, toolbars, etc.''',
          numberOfElements: ButtonsModel.fetchAll().length,
        ),
        MaterialComponentsModel(
          name: inputAndSelectionTitle,
          details:
              '''The "Input and selections" widgets helps the user to select a single or multiple options from a set of values. It also help the user to insert some text''',
          numberOfElements: InputAndSelectionModel.fetchAll().length,
        ),
        MaterialComponentsModel(
          name: dialogsAlertsAndPanelsTitle,
          details:
              '''"Dialogs, alerts, and panels" provide more information to the users. It also provide the ability to choose a specific action or list of actions to the user.''',
          numberOfElements: DialogsAlertsAndPanelsModel.fetchAll().length,
        ),
        MaterialComponentsModel(
          name: 'Information displays',
          details: '''Provide more information about anything to the user and represent the  information as a presentable format''',
          numberOfElements: InformationDisplaysModel.fetchAll().length,
        ),
        MaterialComponentsModel(
          name: 'Layout',
          details: '''Provide some basic structure or shape to represent information like "Divider", "ListTile" and "Stepper"''',
          numberOfElements: LayoutWidgetModel.fetchAll().length,
        ),
      ];
}
