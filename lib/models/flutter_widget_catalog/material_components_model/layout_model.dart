class LayoutModel {
  String name;
  String details;
  int numberOfElements;

  LayoutModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<LayoutModel> fetchAll() => [
        LayoutModel(
          name: 'Divider',
          details: 'A one logical pixel thick horizontal line, with padding on either side.',
          numberOfElements: 0,
        ),
        LayoutModel(
          name: 'ListTile',
          details: 'A single fixed-height row that typically contains some text as well as a leading or trailing icon.',
          numberOfElements: 0,
        ),
        LayoutModel(
          name: 'Stepper',
          details: 'A Material Design stepper widget that displays progress through a sequence of steps.',
          numberOfElements: 0,
        ),
      ];
}
