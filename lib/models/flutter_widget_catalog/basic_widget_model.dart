import 'package:flutter_a2z/routing/routing_constants.dart';

class BasicWidgetModel {
  String name;
  String details;
  int numberOfElements;

  BasicWidgetModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<BasicWidgetModel> fetchAll() => [
        BasicWidgetModel(
          name: appBarTitle,
          details:
              'A Material Design app bar. An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar.',
          numberOfElements: 0,
        ),
        BasicWidgetModel(
          name: columnTitle,
          details: 'Layout a list of child widgets in the vertical direction.',
          numberOfElements: 0,
        ),
        BasicWidgetModel(
          name: containerTitle,
          details:
              '''Container class in flutter is a convenience widget that combines common painting, positioning, and sizing of widgets. A Container class can be used to store one or more widgets and position it on the screen according to our convenience. Basically a container is like a box to store contents. \n\nA basic container element that stores a widget has a margin, which separates the present container with other contents. The total container can be given a border of different shapes, for example, rounded rectangles, etc. A container surrounds its child with padding and then applies additional constraints to the padded extent (incorporating the width and height as constraints, if either is non-null).''',
          numberOfElements: 0,
        ),
        BasicWidgetModel(
          name: elevatedButtonTitle,
          details: 'A Material Design elevated button. A filled button whose material elevates when pressed.',
          numberOfElements: 0,
        ),
        BasicWidgetModel(
          name: flutterLogoTitle,
          details: 'The Flutter logo, in widget form. This widget respects the IconTheme.',
          numberOfElements: 0,
        ),
        BasicWidgetModel(
          name: iconTitle,
          details: 'A Material Design icon.',
          numberOfElements: 0,
        ),
        BasicWidgetModel(
          name: imageTitle,
          details: 'A widget that displays an image.',
          numberOfElements: 0,
        ),
        BasicWidgetModel(
          name: placeholderTitle,
          details: 'A widget that draws a box that represents where other widgets will one day be added.',
          numberOfElements: 0,
        ),
        BasicWidgetModel(
          name: rowTitle,
          details: 'Layout a list of child widgets in the horizontal direction.',
          numberOfElements: 0,
        ),
        BasicWidgetModel(
          name: scaffoldTitle,
          details:
              'Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets.',
          numberOfElements: 0,
        ),
        BasicWidgetModel(
          name: textTitle,
          details: 'A run of text with a single style.',
          numberOfElements: 0,
        ),
      ];
}
