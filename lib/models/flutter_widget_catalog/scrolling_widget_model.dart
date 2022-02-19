class ScrollingWidgetModel {
  String name;
  String details;
  List<ScrollingWidgetModel>? subWidget;

  ScrollingWidgetModel({
    required this.name,
    required this.details,
    this.subWidget,
  });

  static List<ScrollingWidgetModel> fetchAll() => [
        ScrollingWidgetModel(
          name: 'CustomScrollView',
          details: 'A ScrollView that creates custom scroll effects using slivers.',
        ),
        ScrollingWidgetModel(
          name: 'DraggableScrollableSheet',
          details:
              'A container for a Scrollable that responds to drag gestures by resizing the scrollable until a limit is reached, and then scrolling.',
        ),
        ScrollingWidgetModel(
          name: 'GridView',
          details:
              'A grid list consists of a repeated pattern of cells arrayed in a vertical and horizontal layout. The GridView widget implements this component.',
        ),
        ScrollingWidgetModel(
          name: 'ListView',
          details:
              'A scrollable, linear list of widgets. ListView is the most commonly used scrolling widget. It displays its children one after another in the scroll direction....',
        ),
        ScrollingWidgetModel(
          name: 'NestedScrollView',
          details:
              'A scrolling view inside of which can be nested other scrolling views, with their scroll positions being intrinsically linked.',
        ),
        ScrollingWidgetModel(
          name: 'NotificationListener',
          details: 'A widget that listens for Notifications bubbling up the tree.',
        ),
        ScrollingWidgetModel(
          name: 'PageView',
          details: 'A scrollable list that works page by page.',
        ),
        ScrollingWidgetModel(
          name: 'RefreshIndicator',
          details: 'A Material Design pull-to-refresh wrapper for scrollables.',
        ),
        ScrollingWidgetModel(
          name: 'ReorderableListView',
          details: 'A list whose items the user can interactively reorder by dragging.',
        ),
        ScrollingWidgetModel(
          name: 'ScrollConfiguration',
          details: 'Controls how Scrollable widgets behave in a subtree.',
        ),
        ScrollingWidgetModel(
          name: 'Scrollable',
          details:
              'Scrollable implements the interaction model for a scrollable widget, including gesture recognition, but does not have an opinion about how the viewport, which actually displays...',
        ),
        ScrollingWidgetModel(
          name: 'Scrollbar',
          details: 'A Material Design scrollbar. A scrollbar indicates which portion of a Scrollable widget is actually visible.',
        ),
        ScrollingWidgetModel(
          name: 'SingleChildScrollView',
          details:
              'A box in which a single widget can be scrolled. This widget is useful when you have a single box that will normally be entirely...',
        ),
      ];
}
