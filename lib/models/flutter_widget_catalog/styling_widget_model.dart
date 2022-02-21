class StylingWidgetModel {
  String name;
  String details;
  int numberOfElements;

  StylingWidgetModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<StylingWidgetModel> fetchAll() => [
        StylingWidgetModel(
          name: 'MediaQuery',
          details: 'Establishes a subtree in which media queries resolve to the given data.',
          numberOfElements: 0,
        ),
        StylingWidgetModel(
          name: 'Padding',
          details: 'A widget that insets its child by the given padding.',
          numberOfElements: 0,
        ),
        StylingWidgetModel(
          name: 'Theme',
          details: 'Applies a theme to descendant widgets. A theme describes the colors and typographic choices of an application.',
          numberOfElements: 0,
        ),
      ];
}
