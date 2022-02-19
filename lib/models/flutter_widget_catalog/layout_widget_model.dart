class LayoutWidgetModel {
  String name;
  String details;
  List<LayoutWidgetModel>? subWidget;

  LayoutWidgetModel({
    required this.name,
    required this.details,
    this.subWidget,
  });

  static List<LayoutWidgetModel> fetchAll() => [
        LayoutWidgetModel(
          name: 'Single-child layout widgets',
          details:
              'Single-Child Layout Widgets are the ones that will accept only one widget as there child. Such as: Container(), Center(), Expanded(), Align(), SizedBox() etc.',
        ),
        LayoutWidgetModel(
          name: 'Multi-child layout widgets',
          details:
              'Multi-Child Layout Widgets are the ones that will accept more than one widget as there child. Such as: Column(), Row(), Stack(), GridView(), ListView(), Table() etc.',
        ),
        LayoutWidgetModel(
          name: 'Sliver widgets',
          details:
              'Sliver is a portion of the scrollable area which is used to achieve a custom scrolling effect. In other words, the sliver widget is a slice of the viewport. We can implement all of the scrollable views, such as ListView, GridView using slivers.',
        ),
      ];
}
