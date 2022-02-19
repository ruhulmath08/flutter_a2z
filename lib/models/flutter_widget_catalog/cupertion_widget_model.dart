class CupertinoWidgetModel {
  String name;
  String details;

  CupertinoWidgetModel({
    required this.name,
    required this.details,
  });

  static List<CupertinoWidgetModel> fetchAll() => [
        CupertinoWidgetModel(
          name: 'CupertinoActionSheet',
          details: 'An iOS-style modal bottom action sheet to choose an option among many.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoActivityIndicator',
          details: 'An iOS-style activity indicator. Displays a circular "spinner"',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoAlertDialog',
          details: 'An iOS-style alert dialog.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoButton',
          details: 'An iOS-style button.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoContextMenu',
          details:
              'An iOS-style full-screen modal route that opens when the child is long-pressed. Used to display relevant actions for your content.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoDatePicker',
          details: 'An iOS-style date or date and time picker.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoDialogAction',
          details: 'A button typically used in a CupertinoAlertDialog.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoFullscreenDialogTransition',
          details: 'An iOS-style transition used for summoning fullscreen dialogs.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoNavigationBar',
          details: 'An iOS-style top navigation bar. Typically used with CupertinoPageScaffold.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoPageScaffold',
          details: 'Basic iOS style page layout structure. Positions a navigation bar and content on a background.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoPageTransition',
          details: 'Provides an iOS-style page transition animation.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoPicker',
          details: 'An iOS-style picker control. Used to select an item in a short list.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoPopupSurface',
          details: 'Rounded rectangle surface that looks like an iOS popup surface, such as an alert dialog or action sheet.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoScrollbar',
          details: 'An iOS-style scrollbar that indicates which portion of a scrollable widget is currently visible.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoSearchTextField',
          details: 'An iOS-style search field.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoSegmentedControl',
          details: 'An iOS-style segmented control. Used to select mutually exclusive options in a horizontal list.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoSlider',
          details: 'Used to select from a range of values.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoSlidingSegmentedControl',
          details: 'An iOS-13-style segmented control. Used to select mutually exclusive options in a horizontal list.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoSliverNavigationBar',
          details: 'An iOS-styled navigation bar with iOS-11-style large titles using slivers.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoSwitch',
          details: 'An iOS-style switch. Used to toggle the on/off state of a single setting.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoTabBar',
          details: 'An iOS-style bottom tab bar. Typically used with CupertinoTabScaffold',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoTabScaffold',
          details: 'Tabbed iOS app structure. Positions a tab bar on top of tabs of content.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoTabView',
          details: 'Root content of a tab that supports parallel navigation between tabs. Typically used with CupertinoTabScaffold.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoTextField',
          details: 'An iOS-style text field.',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoTimerPicker',
          details: 'An iOS-style countdown timer picker.',
        ),
      ];
}
