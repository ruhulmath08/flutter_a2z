class DialogsAlertsAndPanelsModel {
  String name;
  String details;
  List<DialogsAlertsAndPanelsModel>? subWidget;

  DialogsAlertsAndPanelsModel({
    required this.name,
    required this.details,
    this.subWidget,
  });

  static List<DialogsAlertsAndPanelsModel> fetchAll() => [
        DialogsAlertsAndPanelsModel(
          name: 'AlertDialog',
          details:
              'Alerts are urgent interruptions requiring acknowledgement that inform the user about a situation. The AlertDialog widget implements this component.',
        ),
        DialogsAlertsAndPanelsModel(
          name: 'BottomSheet',
          details:
              'Bottom sheets slide up from the bottom of the screen to reveal more content. You can call showBottomSheet() to implement a persistent bottom sheet or...',
        ),
        DialogsAlertsAndPanelsModel(
          name: 'ExpansionPanel',
          details:
              'Expansion panels contain creation flows and allow lightweight editing of an element. The ExpansionPanel widget implements this component.',
        ),
        DialogsAlertsAndPanelsModel(
          name: 'SimpleDialog',
          details:
              'Simple dialogs can provide additional details or actions about a list item. For example they can display avatars icons clarifying subtext or orthogonal actions (such...',
        ),
        DialogsAlertsAndPanelsModel(
          name: 'SnackBar',
          details: 'A lightweight message with an optional action which briefly displays at the bottom of the screen.',
        ),
      ];
}
