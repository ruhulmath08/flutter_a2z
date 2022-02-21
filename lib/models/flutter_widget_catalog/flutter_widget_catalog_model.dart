import 'package:flutter_a2z/models/flutter_widget_catalog/accessibility_widget_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/animation_and_motion_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/assets_images_and_icons_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/async_widget_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/basic_widget_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/cupertion_widget_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/input_widget_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/interaction_widget_model/interaction_widget_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/layout_widgets_model/layout_widget_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/material_components_model/material_components_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/painting_and_effects_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/scrolling_widget_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/styling_widget_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/text_widget_model.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class FlutterWidgetCatalogModel {
  String name;
  String details;
  int numberOfElements;

  FlutterWidgetCatalogModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<FlutterWidgetCatalogModel> fetchAll() => [
        FlutterWidgetCatalogModel(
          name: accessibilityTitle,
          details: 'Make your app accessible',
          numberOfElements: AccessibilityWidgetModel.fetchAll().length,
        ),
        FlutterWidgetCatalogModel(
          name: animationAndMotionTitle,
          details: 'Bring animations to your app.',
          numberOfElements: AnimationAndMotionModel.fetchAll().length,
        ),
        FlutterWidgetCatalogModel(
          name: assetsImagesAndIconsTitle,
          details: 'Manage assets, display images, and show icons.',
          numberOfElements: AssetsImagesAndIconsModel.fetchAll().length,
        ),
        FlutterWidgetCatalogModel(
          name: asyncWidgetsTitle,
          details: 'Async patterns to your Flutter application.',
          numberOfElements: AsyncWidgetModel.fetchAll().length,
        ),
        FlutterWidgetCatalogModel(
          name: basicWidgetsTitle,
          details: 'Widgets you absolutely need to know before building your first Flutter app.',
          numberOfElements: BasicWidgetModel.fetchAll().length,
        ),
        FlutterWidgetCatalogModel(
          name: cupertinoWidgetsTitle,
          details: 'Beautiful and high-fidelity widgets for current iOS design language.',
          numberOfElements: CupertinoWidgetModel.fetchAll().length,
        ),
        FlutterWidgetCatalogModel(
          name: inputWidgetsTitle,
          details: 'Take user input in addition to input widgets in Material Components and Cupertino.',
          numberOfElements: InputWidgetModel.fetchAll().length,
        ),
        FlutterWidgetCatalogModel(
          name: interactionModelsTitle,
          details: 'Respond to touch events and route users to different views.',
          numberOfElements: InteractionWidgetModel.fetchAll().length,
        ),
        FlutterWidgetCatalogModel(
          name: layoutWidgetsTitle,
          details: 'Arrange other widgets columns, rows, grids, and many other layouts.',
          numberOfElements: LayoutWidgetModel.fetchAll().length,
        ),
        FlutterWidgetCatalogModel(
          name: materialComponentsTitle,
          details: 'Visual, behavioral, and motion-rich widgets implementing the Material Design guidelines.',
          numberOfElements: MaterialComponentsModel.fetchAll().length,
        ),
        FlutterWidgetCatalogModel(
          name: paintingAndEffectsTitle,
          details: 'These widgets apply visual effects to the children without changing their layout, size, or position.',
          numberOfElements: PaintingAndEffectsModel.fetchAll().length,
        ),
        FlutterWidgetCatalogModel(
          name: scrollingWidgetsTitle,
          details: 'Scroll multiple widgets as children of the parent.',
          numberOfElements: ScrollingWidgetModel.fetchAll().length,
        ),
        FlutterWidgetCatalogModel(
          name: stylingWidgetTitle,
          details: 'Manage the theme of your app, makes your app responsive to screen sizes, or add padding.',
          numberOfElements: StylingWidgetModel.fetchAll().length,
        ),
        FlutterWidgetCatalogModel(
          name: textWidgetTitle,
          details: 'Display and style text.',
          numberOfElements: TextWidgetModel.fetchAll().length,
        ),
      ];
}
