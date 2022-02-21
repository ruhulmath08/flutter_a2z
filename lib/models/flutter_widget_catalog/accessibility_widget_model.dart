class AccessibilityWidgetModel {
  String name;
  String details;
  int numberOfElements;

  AccessibilityWidgetModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<AccessibilityWidgetModel> fetchAll() => [
        AccessibilityWidgetModel(
          name: 'ExcludeSemantics',
          details:
              'A widget that drops all the semantics of its descendants. This can be used to hide subwidgets that would otherwise be reported but that would...',
          numberOfElements: 0,
        ),
        AccessibilityWidgetModel(
          name: 'MergeSemantics',
          details: 'A widget that merges the semantics of its descendants.',
          numberOfElements: 0,
        ),
        AccessibilityWidgetModel(
          name: 'Semantics',
          details:
              'A widget that annotates the widget tree with a description of the meaning of the widgets. Used by accessibility tools, search engines, and other semantic...',
          numberOfElements: 0,
        ),
      ];
}
