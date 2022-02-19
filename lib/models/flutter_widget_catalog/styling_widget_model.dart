class StylingWidgetModel {
  String name;
  String details;
  List<StylingWidgetModel>? subWidget;

  StylingWidgetModel({
    required this.name,
    required this.details,
    this.subWidget,
  });

  static List<StylingWidgetModel> fetchAll() => [
        StylingWidgetModel(
          name: 'MediaQuery',
          details: 'Establishes a subtree in which media queries resolve to the given data.',
        ),
        StylingWidgetModel(
          name: 'Padding',
          details: 'A widget that insets its child by the given padding.',
        ),
        StylingWidgetModel(
          name: 'Theme',
          details: 'Applies a theme to descendant widgets. A theme describes the colors and typographic choices of an application.',
        ),
      ];
}
