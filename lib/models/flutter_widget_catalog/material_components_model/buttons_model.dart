class ButtonsModel {
  String name;
  String details;
  int numberOfElements;

  ButtonsModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<ButtonsModel> fetchAll() => [
        ButtonsModel(
          name: 'DropdownButton',
          details: 'Shows the currently selected item and an arrow that opens a menu for selecting another item.',
          numberOfElements: 0,
        ),
        ButtonsModel(
          name: 'ElevatedButton',
          details: 'A Material Design elevated button. A filled button whose material elevates when pressed.',
          numberOfElements: 0,
        ),
        ButtonsModel(
          name: 'FloatingActionButton',
          details:
              'A floating action button is a circular icon button that hovers over content to promote a primary action in the application. Floating action buttons are...',
          numberOfElements: 0,
        ),
        ButtonsModel(
          name: 'IconButton',
          details: 'An icon button is a picture printed on a Material widget that reacts to touches by filling with color (ink).',
          numberOfElements: 0,
        ),
        ButtonsModel(
          name: 'OutlinedButton',
          details: 'A Material Design outlined button, essentially a TextButton with an outlined border.',
          numberOfElements: 0,
        ),
        ButtonsModel(
          name: 'PopupMenuButton',
          details: 'Displays a menu when pressed and calls onSelected when the menu is dismissed because an item was selected.',
          numberOfElements: 0,
        ),
        ButtonsModel(
          name: 'TextButton',
          details: 'A Material Design text button. A simple flat button without a border outline.',
          numberOfElements: 0,
        ),
      ];
}
