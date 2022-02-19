class LayoutModel {
  String name;
  String details;
  List<LayoutModel>? subWidget;

  LayoutModel({
    required this.name,
    required this.details,
    this.subWidget,
  });

  static List<LayoutModel> fetchAll() => [
        LayoutModel(
          name: 'Divider',
          details: 'A one logical pixel thick horizontal line, with padding on either side.',
        ),
        LayoutModel(
          name: 'ListTile',
          details: 'A single fixed-height row that typically contains some text as well as a leading or trailing icon.',
        ),
        LayoutModel(
          name: 'Stepper',
          details: 'A Material Design stepper widget that displays progress through a sequence of steps.',
        ),
      ];
}
