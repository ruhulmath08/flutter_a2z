class InputWidgetModel {
  String name;
  String details;
  int numberOfElements;

  InputWidgetModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<InputWidgetModel> fetchAll() => [
        InputWidgetModel(
          name: 'Autocomplete',
          details: 'A widget for helping the user make a selection by entering some text and choosing from among a list of options.',
          numberOfElements: 0,
        ),
        InputWidgetModel(
          name: 'Form',
          details: 'An optional container for grouping together multiple form field widgets (e.g. TextField widgets).',
          numberOfElements: 0,
        ),
        InputWidgetModel(
          name: 'FormField',
          details:
              'A single form field. This widget maintains the current state of the form field, so that updates and validation errors are visually reflected in the...',
          numberOfElements: 0,
        ),
        InputWidgetModel(
          name: 'RawKeyboardListener',
          details: 'A widget that calls a callback whenever the user presses or releases a key on a keyboard.',
          numberOfElements: 0,
        ),
      ];
}
