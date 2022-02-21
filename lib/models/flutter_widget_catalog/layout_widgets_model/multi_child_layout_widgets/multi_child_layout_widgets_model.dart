class MultiChildLayoutWidgetsModel {
  String name;
  String details;
  int numberOfElements;

  MultiChildLayoutWidgetsModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<MultiChildLayoutWidgetsModel> fetchAll() => [
        MultiChildLayoutWidgetsModel(
          name: 'Column',
          details: 'Layout a list of child widgets in the vertical direction.',
          numberOfElements: 0,
        ),
        MultiChildLayoutWidgetsModel(
          name: 'CustomMultiChildLayout',
          details: 'A widget that uses a delegate to size and position multiple children.',
          numberOfElements: 0,
        ),
        MultiChildLayoutWidgetsModel(
          name: 'Flow',
          details: 'A widget that implements the flow layout algorithm.',
          numberOfElements: 0,
        ),
        MultiChildLayoutWidgetsModel(
          name: 'GridView',
          details:
              'A grid list consists of a repeated pattern of cells arrayed in a vertical and horizontal layout. The GridView widget implements this component.',
          numberOfElements: 0,
        ),
        MultiChildLayoutWidgetsModel(
          name: 'IndexedStack',
          details: 'A Stack that shows a single child from a list of children.',
          numberOfElements: 0,
        ),
        MultiChildLayoutWidgetsModel(
          name: 'LayoutBuilder',
          details: 'Builds a widget tree that can depend on the parent widget"s size.',
          numberOfElements: 0,
        ),
        MultiChildLayoutWidgetsModel(
          name: 'ListBody',
          details:
              'A widget that arranges its children sequentially along a given axis, forcing them to the dimension of the parent in the other axis.',
          numberOfElements: 0,
        ),
        MultiChildLayoutWidgetsModel(
          name: 'ListView',
          details:
              'A scrollable, linear list of widgets. ListView is the most commonly used scrolling widget. It displays its children one after another in the scroll direction....',
          numberOfElements: 0,
        ),
        MultiChildLayoutWidgetsModel(
          name: 'Row',
          details: 'Layout a list of child widgets in the horizontal direction.',
          numberOfElements: 0,
        ),
        MultiChildLayoutWidgetsModel(
          name: 'Stack',
          details:
              'This class is useful if you want to overlap several children in a simple way, for example having some text and an image, overlaid with...',
          numberOfElements: 0,
        ),
        MultiChildLayoutWidgetsModel(
          name: 'Table',
          details: 'A widget that uses the table layout algorithm for its children.',
          numberOfElements: 0,
        ),
        MultiChildLayoutWidgetsModel(
          name: 'Wrap',
          details: 'A widget that displays its children in multiple horizontal or vertical runs.',
          numberOfElements: 0,
        ),
      ];
}
