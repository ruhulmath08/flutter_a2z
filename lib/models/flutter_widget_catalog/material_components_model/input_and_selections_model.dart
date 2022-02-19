class InputAndSelectionModel {
  String name;
  String details;
  List<InputAndSelectionModel>? subWidget;

  InputAndSelectionModel({
    required this.name,
    required this.details,
    this.subWidget,
  });

  static List<InputAndSelectionModel> fetchAll() => [
        InputAndSelectionModel(
          name: 'Checkbox',
          details: 'Checkboxes allow the user to select multiple options from a set. The Checkbox widget implements this component.',
        ),
        InputAndSelectionModel(
          name: 'Date & Time Pickers',
          details:
              'Date pickers use a dialog window to select a single date on mobile. Time pickers use a dialog to select a single time (in the...',
        ),
        InputAndSelectionModel(
          name: 'Radio',
          details:
              'Radio buttons allow the user to select one option from a set. Use radio buttons for exclusive selection if you think that the user needs...',
          subWidget: [],
        ),
        InputAndSelectionModel(
          name: 'Slider',
          details: 'Sliders let users select from a range of values by moving the slider thumb.',
        ),
        InputAndSelectionModel(
          name: 'Switch',
          details: 'On/off switches toggle the state of a single settings option. The Switch widget implements this component.',
        ),
        InputAndSelectionModel(
          name: 'TextField',
          details:
              'Touching a text field places the cursor and displays the keyboard. The TextField widget implements this component.',
        ),
      ];
}
