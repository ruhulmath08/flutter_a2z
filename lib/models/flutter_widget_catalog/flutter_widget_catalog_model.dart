class FlutterWidgetCatalogModel {
  String name;
  String details;

  FlutterWidgetCatalogModel({
    required this.name,
    required this.details,
  });

  static List<FlutterWidgetCatalogModel> fetchAll() => [
        FlutterWidgetCatalogModel(
          name: 'Accessibility',
          details: 'Make your app accessible',
        ),
        FlutterWidgetCatalogModel(
          name: 'Animation and Motion',
          details: 'Bring animations to your app.',
        ),
        FlutterWidgetCatalogModel(
          name: 'Assets, Images, and Icons',
          details: 'Manage assets, display images, and show icons.',
        ),
        FlutterWidgetCatalogModel(
          name: 'Async',
          details: 'Async patterns to your Flutter application.',
        ),
        FlutterWidgetCatalogModel(
          name: 'Basics',
          details: 'Widgets you absolutely need to know before building your first Flutter app.',
        ),
        FlutterWidgetCatalogModel(
          name: 'Cupertino (iOS-style widgets)',
          details: 'Beautiful and high-fidelity widgets for current iOS design language.',
        ),
        FlutterWidgetCatalogModel(
          name: 'Input',
          details: 'Take user input in addition to input widgets in Material Components and Cupertino.',
        ),
        FlutterWidgetCatalogModel(
          name: 'Interaction Models',
          details: 'Respond to touch events and route users to different views.',
        ),
        FlutterWidgetCatalogModel(
          name: 'Layout',
          details: 'Arrange other widgets columns, rows, grids, and many other layouts.',
        ),
        FlutterWidgetCatalogModel(
          name: 'Material Components',
          details: 'Visual, behavioral, and motion-rich widgets implementing the Material Design guidelines.',
        ),
        FlutterWidgetCatalogModel(
          name: 'Painting and effects',
          details: 'These widgets apply visual effects to the children without changing their layout, size, or position.',
        ),
        FlutterWidgetCatalogModel(
          name: 'Scrolling',
          details: 'Scroll multiple widgets as children of the parent.',
        ),
        FlutterWidgetCatalogModel(
          name: 'Styling',
          details: 'Manage the theme of your app, makes your app responsive to screen sizes, or add padding.',
        ),
        FlutterWidgetCatalogModel(
          name: 'Text',
          details: 'Display and style text.',
        ),
      ];
}
