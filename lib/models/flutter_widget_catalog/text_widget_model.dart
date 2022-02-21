class TextWidgetModel {
  String name;
  String details;
  int numberOfElements;

  TextWidgetModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<TextWidgetModel> fetchAll() => [
        TextWidgetModel(
          name: 'DefaultTextStyle',
          details: 'The text style to apply to descendant Text widgets without explicit style.',
          numberOfElements: 0,
        ),
        TextWidgetModel(
          name: 'RichText',
          details:
              'The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which...',
          numberOfElements: 0,
        ),
        TextWidgetModel(
          name: 'Text',
          details: 'A run of text with a single style.',
          numberOfElements: 0,
        ),
      ];
}
