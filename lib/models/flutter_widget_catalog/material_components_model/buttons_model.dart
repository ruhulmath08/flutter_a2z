class ButtonsModel {
  String name;
  String details;
  List<ButtonsModel>? subWidget;

  ButtonsModel({
    required this.name,
    required this.details,
    this.subWidget,
  });

  static List<ButtonsModel> fetchAll() => [
        ButtonsModel(
          name: 'DropdownButton',
          details: 'Shows the currently selected item and an arrow that opens a menu for selecting another item.',
        ),
        ButtonsModel(
          name: 'ElevatedButton',
          details: 'A Material Design elevated button. A filled button whose material elevates when pressed.',
        ),
        ButtonsModel(
          name: 'FloatingActionButton',
          details:
              'A floating action button is a circular icon button that hovers over content to promote a primary action in the application. Floating action buttons are...',
        ),
        ButtonsModel(
          name: 'IconButton',
          details: 'An icon button is a picture printed on a Material widget that reacts to touches by filling with color (ink).',
        ),
        ButtonsModel(
          name: 'OutlinedButton',
          details: 'A Material Design outlined button, essentially a TextButton with an outlined border.',
        ),
        ButtonsModel(
          name: 'PopupMenuButton',
          details: 'Displays a menu when pressed and calls onSelected when the menu is dismissed because an item was selected.',
        ),
        ButtonsModel(
          name: 'TextButton',
          details: 'A Material Design text button. A simple flat button without a border outline.',
        ),
      ];
}
