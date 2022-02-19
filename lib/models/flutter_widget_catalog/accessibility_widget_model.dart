class AccessibilityWidgetModel {
  String name;
  String details;
  List<AccessibilityWidgetModel>? subWidget;

  AccessibilityWidgetModel({
    required this.name,
    required this.details,
    this.subWidget,
  });

  static List<AccessibilityWidgetModel> fetchAll() => [
        AccessibilityWidgetModel(
          name: 'ExcludeSemantics',
          details:
              'A widget that drops all the semantics of its descendants. This can be used to hide subwidgets that would otherwise be reported but that would...',
        ),
        AccessibilityWidgetModel(
          name: 'MergeSemantics',
          details: 'A widget that merges the semantics of its descendants.',
        ),
        AccessibilityWidgetModel(
          name: 'Semantics',
          details:
              'A widget that annotates the widget tree with a description of the meaning of the widgets. Used by accessibility tools, search engines, and other semantic...',
        ),
      ];
}
