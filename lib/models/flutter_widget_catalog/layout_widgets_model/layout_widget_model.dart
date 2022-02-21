import 'package:flutter_a2z/models/flutter_widget_catalog/layout_widgets_model/multi_child_layout_widgets/multi_child_layout_widgets_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/layout_widgets_model/silver_widgets/silver_widgets_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/layout_widgets_model/single_child_layout_widgets/single_child_layout_widgets_model.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class LayoutWidgetModel {
  String name;
  String details;
  int numberOfElements;

  LayoutWidgetModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<LayoutWidgetModel> fetchAll() => [
        LayoutWidgetModel(
          name: singleChildLayoutWidgetsTitle,
          details:
              'Single-Child Layout Widgets are the ones that will accept only one widget as there child. Such as: Container(), Center(), Expanded(), Align(), SizedBox() etc.',
          numberOfElements: SingleChildLayoutWidgetsModel.fetchAll().length,
        ),
        LayoutWidgetModel(
          name: multiChildLayoutWidgetsTitle,
          details:
              'Multi-Child Layout Widgets are the ones that will accept more than one widget as there child. Such as: Column(), Row(), Stack(), GridView(), ListView(), Table() etc.',
          numberOfElements: MultiChildLayoutWidgetsModel.fetchAll().length,
        ),
        LayoutWidgetModel(
          name: sliverWidgetsTitle,
          details:
              'Sliver is a portion of the scrollable area which is used to achieve a custom scrolling effect. In other words, the sliver widget is a slice of the viewport. We can implement all of the scrollable views, such as ListView, GridView using slivers.',
          numberOfElements: SilverWidgetsModel.fetchAll().length,
        ),
      ];
}
