class InputAndSelectionModel {
  String name;
  String details;
  int numberOfElements;

  InputAndSelectionModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<InputAndSelectionModel> fetchAll() => [
        InputAndSelectionModel(
          name: 'Checkbox',
          details: 'Checkboxes allow the user to select multiple options from a set. The Checkbox widget implements this component.',
          numberOfElements: 0,
        ),
        InputAndSelectionModel(
          name: 'Date & Time Pickers',
          details:
              'Date pickers use a dialog window to select a single date on mobile. Time pickers use a dialog to select a single time (in the...',
          numberOfElements: 0,
        ),
        InputAndSelectionModel(
          name: 'Radio',
          details:
              'Radio buttons allow the user to select one option from a set. Use radio buttons for exclusive selection if you think that the user needs...',
          numberOfElements: 0,
        ),
        InputAndSelectionModel(
          name: 'Slider',
          details: 'Sliders let users select from a range of values by moving the slider thumb.',
          numberOfElements: 0,
        ),
        InputAndSelectionModel(
          name: 'Switch',
          details: 'On/off switches toggle the state of a single settings option. The Switch widget implements this component.',
          numberOfElements: 0,
        ),
        InputAndSelectionModel(
          name: 'TextField',
          details:
              'Touching a text field places the cursor and displays the keyboard. The TextField widget implements this component.',
          numberOfElements: 0,
        ),
      ];
}
