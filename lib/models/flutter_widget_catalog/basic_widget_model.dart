class BasicWidgetModel {
  String name;
  String details;
  List<BasicWidgetModel>? subWidget;

  BasicWidgetModel({
    required this.name,
    required this.details,
    this.subWidget,
  });

  static List<BasicWidgetModel> fetchAll() => [
        BasicWidgetModel(
          name: 'Appbar',
          details:
              'A Material Design app bar. An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar.',
        ),
        BasicWidgetModel(
          name: 'Column',
          details: 'Layout a list of child widgets in the vertical direction.',
        ),
        BasicWidgetModel(
          name: 'Container',
          details: 'A convenience widget that combines common painting, positioning, and sizing widgets.',
        ),
        BasicWidgetModel(
          name: 'ElevatedButton',
          details: 'A Material Design elevated button. A filled button whose material elevates when pressed.',
        ),
        BasicWidgetModel(
          name: 'FlutterLogo',
          details: 'The Flutter logo, in widget form. This widget respects the IconTheme.',
        ),
        BasicWidgetModel(
          name: 'Icon',
          details: 'A Material Design icon.',
        ),
        BasicWidgetModel(
          name: 'Image',
          details: 'A widget that displays an image.',
        ),
        BasicWidgetModel(
          name: 'Placeholder',
          details: 'A widget that draws a box that represents where other widgets will one day be added.',
        ),
        BasicWidgetModel(
          name: 'Row',
          details: 'Layout a list of child widgets in the horizontal direction.',
        ),
        BasicWidgetModel(
          name: 'Scaffold',
          details:
              'Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets.',
        ),
        BasicWidgetModel(
          name: 'Text',
          details: 'A run of text with a single style.',
        ),
      ];
}
