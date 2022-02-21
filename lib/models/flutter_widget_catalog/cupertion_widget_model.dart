class CupertinoWidgetModel {
  String name;
  String details;
  int numberOfElements;

  CupertinoWidgetModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<CupertinoWidgetModel> fetchAll() => [
        CupertinoWidgetModel(
          name: 'CupertinoActionSheet',
          details: 'An iOS-style modal bottom action sheet to choose an option among many.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoActivityIndicator',
          details: 'An iOS-style activity indicator. Displays a circular "spinner"',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoAlertDialog',
          details: 'An iOS-style alert dialog.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoButton',
          details: 'An iOS-style button.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoContextMenu',
          details:
              'An iOS-style full-screen modal route that opens when the child is long-pressed. Used to display relevant actions for your content.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoDatePicker',
          details: 'An iOS-style date or date and time picker.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoDialogAction',
          details: 'A button typically used in a CupertinoAlertDialog.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoFullscreenDialogTransition',
          details: 'An iOS-style transition used for summoning fullscreen dialogs.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoNavigationBar',
          details: 'An iOS-style top navigation bar. Typically used with CupertinoPageScaffold.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoPageScaffold',
          details: 'Basic iOS style page layout structure. Positions a navigation bar and content on a background.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoPageTransition',
          details: 'Provides an iOS-style page transition animation.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoPicker',
          details: 'An iOS-style picker control. Used to select an item in a short list.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoPopupSurface',
          details: 'Rounded rectangle surface that looks like an iOS popup surface, such as an alert dialog or action sheet.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoScrollbar',
          details: 'An iOS-style scrollbar that indicates which portion of a scrollable widget is currently visible.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoSearchTextField',
          details: 'An iOS-style search field.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoSegmentedControl',
          details: 'An iOS-style segmented control. Used to select mutually exclusive options in a horizontal list.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoSlider',
          details: 'Used to select from a range of values.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoSlidingSegmentedControl',
          details: 'An iOS-13-style segmented control. Used to select mutually exclusive options in a horizontal list.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoSliverNavigationBar',
          details: 'An iOS-styled navigation bar with iOS-11-style large titles using slivers.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoSwitch',
          details: 'An iOS-style switch. Used to toggle the on/off state of a single setting.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoTabBar',
          numberOfElements: 0,
          details: 'An iOS-style bottom tab bar. Typically used with CupertinoTabScaffold',
        ),
        CupertinoWidgetModel(
          name: 'CupertinoTabScaffold',
          details: 'Tabbed iOS app structure. Positions a tab bar on top of tabs of content.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoTabView',
          details: 'Root content of a tab that supports parallel navigation between tabs. Typically used with CupertinoTabScaffold.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoTextField',
          details: 'An iOS-style text field.',
          numberOfElements: 0,
        ),
        CupertinoWidgetModel(
          name: 'CupertinoTimerPicker',
          details: 'An iOS-style countdown timer picker.',
          numberOfElements: 0,
        ),
      ];
}
