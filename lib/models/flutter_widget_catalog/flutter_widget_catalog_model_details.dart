import 'package:flutter_a2z/routing/routing_constants.dart';

class FlutterWidgetCatalogModelDetails {
  String name;
  String details;
  bool? isExpanded;
  List<FlutterWidgetCatalogModelDetails> subWidget;

  FlutterWidgetCatalogModelDetails({
    required this.name,
    required this.details,
    this.isExpanded,
    required this.subWidget,
  });

  static List<FlutterWidgetCatalogModelDetails> fetchAll() => [
        FlutterWidgetCatalogModelDetails(
          name: 'Accessibility',
          details: 'Make your app accessible',
          isExpanded: false,
          subWidget: [
            FlutterWidgetCatalogModelDetails(
              name: 'ExcludeSemantics',
              details:
                  'A widget that drops all the semantics of its descendants. This can be used to hide subwidgets that would otherwise be reported but that would...',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'MergeSemantics',
              details: 'A widget that merges the semantics of its descendants.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Semantics',
              details:
                  'A widget that annotates the widget tree with a description of the meaning of the widgets. Used by accessibility tools, search engines, and other semantic...',
              subWidget: [],
            ),
          ],
        ),
        FlutterWidgetCatalogModelDetails(
          name: 'Animation and Motion',
          details: 'Bring animations to your app.',
          isExpanded: false,
          subWidget: [
            FlutterWidgetCatalogModelDetails(
              name: 'AnimatedAlign',
              details:
                  'Animated version of Align which automatically transitions the children position over a given duration whenever the given alignment changes.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'AnimatedBuilder',
              details:
                  'A general-purpose widget for building animations. AnimatedBuilder is useful for more complex widgets that wish to include animation as part of a larger build function....',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'AnimatedContainer',
              details: 'A container that gradually changes its values over a period of time.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'AnimatedCrossFade',
              details: 'A widget that cross-fades between two given children and animates itself between their sizes.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'AnimatedDefaultTextStyle',
              details:
                  'Animated version of DefaultTextStyle which automatically transitions the default text style (the text style to apply to descendant Text widgets without explicit style) over a...',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'AnimatedListState',
              details: 'The state for a scrolling container that animates items when they are inserted or removed.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'AnimatedModalBarrier',
              details: 'A widget that prevents the user from interacting with widgets behind itself.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'AnimatedOpacity',
              details:
                  "Animated version of Opacity which automatically transitions the child's opacity over a given duration whenever the given opacity changes.",
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'AnimatedOpacity',
              details: '',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'AnimatedPhysicalModel',
              details: 'Animated version of PhysicalModel.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'AnimatedPositioned',
              details:
                  "Animated version of Positioned which automatically transitions the child's position over a given duration whenever the given position changes.",
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'AnimatedSize',
              details:
                  "Animated widget that automatically transitions its size over a given duration whenever the given child's size changes.",
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'AnimatedWidget',
              details: 'A widget that rebuilds when the given Listenable changes value.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'AnimatedWidgetBaseState',
              details: 'A base class for widgets with implicit animations.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'DecoratedBoxTransition',
              details: 'Animated version of a DecoratedBox that animates the different properties of its Decoration.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'FadeTransition',
              details: 'Animates the opacity of a widget.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Hero',
              details: 'A widget that marks its child as being a candidate for hero animations.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'PositionedTransition',
              details:
                  "Animated version of Positioned which takes a specific Animation to transition the child's position from a start position to and end position over the lifetime...",
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'RotationTransition',
              details: 'Animates the rotation of a widget.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'ScaleTransition',
              details: 'Animates the scale of transformed widget.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'SizeTransition',
              details: 'Animates its own size and clips and aligns the child.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'SlideTransition',
              details: 'Animates the position of a widget relative to its normal position.',
              subWidget: [],
            ),
          ],
        ),
        FlutterWidgetCatalogModelDetails(
          name: 'Assets, Images, and Icons',
          details: 'Manage assets, display images, and show icons.',
          isExpanded: false,
          subWidget: [
            FlutterWidgetCatalogModelDetails(
              name: 'AssetBundle',
              details:
                  'Asset bundles contain resources, such as images and strings, that can be used by an application. Access to these resources is asynchronous so that they...',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Icon',
              details: 'A Material Design icon.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Image',
              details: 'A widget that displays an image.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'RawImage',
              details: 'A widget that displays a dart:ui.Image directly.',
              subWidget: [],
            ),
          ],
        ),
        FlutterWidgetCatalogModelDetails(
          name: 'Async',
          details: 'Async patterns to your Flutter application.',
          isExpanded: false,
          subWidget: [
            FlutterWidgetCatalogModelDetails(
              name: 'FutureBuilder',
              details: 'Widget that builds itself based on the latest snapshot of interaction with a Future.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'StreamBuilder',
              details: 'Widget that builds itself based on the latest snapshot of interaction with a Stream.',
              isExpanded: false,
              subWidget: [],
            ),
          ],
        ),
        FlutterWidgetCatalogModelDetails(
          name: 'Basics',
          details: 'Widgets you absolutely need to know before building your first Flutter app.',
          isExpanded: false,
          subWidget: [
            FlutterWidgetCatalogModelDetails(
              name: 'Appbar',
              details:
                  'A Material Design app bar. An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Column',
              details: 'Layout a list of child widgets in the vertical direction.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Container',
              details: 'A convenience widget that combines common painting, positioning, and sizing widgets.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'ElevatedButton',
              details: 'A Material Design elevated button. A filled button whose material elevates when pressed.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'FlutterLogo',
              details: 'The Flutter logo, in widget form. This widget respects the IconTheme.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Icon',
              details: 'A Material Design icon.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Image',
              details: 'A widget that displays an image.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Placeholder',
              details: 'A widget that draws a box that represents where other widgets will one day be added.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Row',
              details: 'Layout a list of child widgets in the horizontal direction.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Scaffold',
              details:
                  'Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Text',
              details: 'A run of text with a single style.',
              isExpanded: false,
              subWidget: [],
            ),
          ],
        ),
        FlutterWidgetCatalogModelDetails(
          name: 'Cupertino (iOS-style widgets)',
          details: 'Beautiful and high-fidelity widgets for current iOS design language.',
          isExpanded: false,
          subWidget: [
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoActionSheet',
              details: 'An iOS-style modal bottom action sheet to choose an option among many.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoActivityIndicator',
              details: 'An iOS-style activity indicator. Displays a circular "spinner"',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoAlertDialog',
              details: 'An iOS-style alert dialog.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoButton',
              details: 'An iOS-style button.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoContextMenu',
              details:
                  'An iOS-style full-screen modal route that opens when the child is long-pressed. Used to display relevant actions for your content.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoDatePicker',
              details: 'An iOS-style date or date and time picker.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoDialogAction',
              details: 'A button typically used in a CupertinoAlertDialog.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoFullscreenDialogTransition',
              details: 'An iOS-style transition used for summoning fullscreen dialogs.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoNavigationBar',
              details: 'An iOS-style top navigation bar. Typically used with CupertinoPageScaffold.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoPageScaffold',
              details: 'Basic iOS style page layout structure. Positions a navigation bar and content on a background.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoPageTransition',
              details: 'Provides an iOS-style page transition animation.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoPicker',
              details: 'An iOS-style picker control. Used to select an item in a short list.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoPopupSurface',
              details: 'Rounded rectangle surface that looks like an iOS popup surface, such as an alert dialog or action sheet.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoScrollbar',
              details: 'An iOS-style scrollbar that indicates which portion of a scrollable widget is currently visible.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoSearchTextField',
              details: 'An iOS-style search field.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoSegmentedControl',
              details: 'An iOS-style segmented control. Used to select mutually exclusive options in a horizontal list.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoSlider',
              details: 'Used to select from a range of values.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoSlidingSegmentedControl',
              details: 'An iOS-13-style segmented control. Used to select mutually exclusive options in a horizontal list.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoSliverNavigationBar',
              details: 'An iOS-styled navigation bar with iOS-11-style large titles using slivers.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoSwitch',
              details: 'An iOS-style switch. Used to toggle the on/off state of a single setting.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoTabBar',
              details: 'An iOS-style bottom tab bar. Typically used with CupertinoTabScaffold',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoTabScaffold',
              details: 'Tabbed iOS app structure. Positions a tab bar on top of tabs of content.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoTabView',
              details:
                  'Root content of a tab that supports parallel navigation between tabs. Typically used with CupertinoTabScaffold.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoTextField',
              details: 'An iOS-style text field.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CupertinoTimerPicker',
              details: 'An iOS-style countdown timer picker.',
              subWidget: [],
            ),
          ],
        ),
        FlutterWidgetCatalogModelDetails(
          name: 'Input',
          details: 'Take user input in addition to input widgets in Material Components and Cupertino.',
          isExpanded: false,
          subWidget: [
            FlutterWidgetCatalogModelDetails(
              name: 'Autocomplete',
              details:
                  'A widget for helping the user make a selection by entering some text and choosing from among a list of options.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Form',
              details: 'An optional container for grouping together multiple form field widgets (e.g. TextField widgets).',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'FormField',
              details:
                  'A single form field. This widget maintains the current state of the form field, so that updates and validation errors are visually reflected in the...',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'RawKeyboardListener',
              details: 'A widget that calls a callback whenever the user presses or releases a key on a keyboard.',
              subWidget: [],
            ),
          ],
        ),
        FlutterWidgetCatalogModelDetails(
          name: 'Interaction Models',
          details: 'Respond to touch events and route users to different views.',
          isExpanded: false,
          subWidget: [
            FlutterWidgetCatalogModelDetails(
              name: 'AbsorbPointer',
              details:
                  'A widget that absorbs pointers during hit testing. When absorbing is true, this widget prevents its subtree from receiving pointer events by terminating hit testing...',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Dismissible',
              details:
                  'A widget that can be dismissed by dragging in the indicated direction. Dragging or flinging this widget in the DismissDirection causes the child to slide...',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'DragTarget',
              details:
                  'A widget that receives data when a Draggable widget is dropped. When a draggable is dragged on top of a drag target, the drag target...',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Draggable',
              details:
                  'A widget that can be dragged from to a DragTarget. When a draggable widget recognizes the start of a drag gesture, it displays a feedback...',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'DraggableScrollableSheet',
              details:
                  'A container for a Scrollable that responds to drag gestures by resizing the scrollable until a limit is reached, and then scrolling.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'GestureDetector',
              details:
                  'A widget that detects gestures. Attempts to recognize gestures that correspond to its non-null callbacks. If this widget has a child, it defers to that...',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'IgnorePointer',
              details:
                  'A widget that is invisible during hit testing. When ignoring is true, this widget (and its subtree) is invisible to hit testing. It still consumes...',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'InteractiveViewer',
              details: 'A widget that enables pan and zoom interactions with its child.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'LongPressDraggable',
              details: 'Makes its child draggable starting from long press.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Scrollable',
              details:
                  'Scrollable implements the interaction model for a scrollable widget, including gesture recognition, but does not have an opinion about how the viewport, which actually displays...',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Hero',
              details: 'A widget that marks its child as being a candidate for hero animations.',
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Navigator',
              details:
                  'A widget that manages a set of child widgets with a stack discipline. Many apps have a navigator near the top of their widget hierarchy...',
              subWidget: [],
            ),
          ],
        ),
        FlutterWidgetCatalogModelDetails(
          name: 'Layout',
          details: 'Arrange other widgets columns, rows, grids, and many other layouts.',
          isExpanded: false,
          subWidget: [
            FlutterWidgetCatalogModelDetails(
              name: 'Single-child layout widgets',
              details:
                  'Single-Child Layout Widgets are the ones that will accept only one widget as there child. Such as: Container(), Center(), Expanded(), Align(), SizedBox() etc.',
              subWidget: [
                FlutterWidgetCatalogModelDetails(
                  name: 'Align',
                  details: 'A widget that aligns its child within itself and optionally sizes itself based on the child\ts size.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'AspectRatio',
                  details: 'A widget that attempts to size the child to a specific aspect ratio.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Baseline',
                  details: 'A widget that positions its child according to the child\ts baseline.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Center',
                  details: 'A widget that centers its child within itself.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'ConstrainedBox',
                  details: 'A widget that imposes additional constraints on its child.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Container',
                  details: 'A convenience widget that combines common painting, positioning, and sizing widgets.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'CustomSingleChildLayout',
                  details: 'A widget that defers the layout of its single child to a delegate.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Expanded',
                  details: 'A widget that expands a child of a Row, Column, or Flex.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'FittedBox',
                  details: 'Scales and positions its child within itself according to fit.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'FractionallySizedBox',
                  details:
                      'A widget that sizes its child to a fraction of the total available space. For more details about the layout algorithm, see RenderFractionallySizedOverflowBox.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'IntrinsicHeight',
                  details: 'A widget that sizes its child to the child"s intrinsic height.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'IntrinsicWidth',
                  details: 'A widget that sizes its child to the child"s intrinsic width.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'LimitedBox',
                  details: 'A box that limits its size only when it"s unconstrained.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Offstage',
                  details:
                      'A widget that lays the child out as if it was in the tree, but without painting anything, without making the child available for hit...',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'OverflowBox',
                  details:
                      'A widget that imposes different constraints on its child than it gets from its parent, possibly allowing the child to overflow the parent.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Padding',
                  details: 'A widget that insets its child by the given padding.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'SizedBox',
                  details:
                      'A box with a specified size. If given a child, this widget forces its child to have a specific width and/or height (assuming values are...',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'SizedOverflowBox',
                  details:
                      'A widget that is a specific size but passes its original constraints through to its child, which will probably overflow.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Transform',
                  details: 'A widget that applies a transformation before painting its child.',
                  subWidget: [],
                ),
              ],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Multi-child layout widgets',
              details:
                  'Multi-Child Layout Widgets are the ones that will accept more than one widget as there child. Such as: Column(), Row(), Stack(), GridView(), ListView(), Table() etc.',
              subWidget: [
                FlutterWidgetCatalogModelDetails(
                  name: 'Column',
                  details: 'Layout a list of child widgets in the vertical direction.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'CustomMultiChildLayout',
                  details: 'A widget that uses a delegate to size and position multiple children.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Flow',
                  details: 'A widget that implements the flow layout algorithm.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'GridView',
                  details:
                      'A grid list consists of a repeated pattern of cells arrayed in a vertical and horizontal layout. The GridView widget implements this component.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'IndexedStack',
                  details: 'A Stack that shows a single child from a list of children.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'LayoutBuilder',
                  details: 'Builds a widget tree that can depend on the parent widget"s size.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'ListBody',
                  details:
                      'A widget that arranges its children sequentially along a given axis, forcing them to the dimension of the parent in the other axis.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'ListView',
                  details:
                      'A scrollable, linear list of widgets. ListView is the most commonly used scrolling widget. It displays its children one after another in the scroll direction....',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Row',
                  details: 'Layout a list of child widgets in the horizontal direction.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Stack',
                  details:
                      'This class is useful if you want to overlap several children in a simple way, for example having some text and an image, overlaid with...',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Table',
                  details: 'A widget that uses the table layout algorithm for its children.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Wrap',
                  details: 'A widget that displays its children in multiple horizontal or vertical runs.',
                  subWidget: [],
                ),
              ],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Sliver widgets',
              details:
                  'Sliver is a portion of the scrollable area which is used to achieve a custom scrolling effect. In other words, the sliver widget is a slice of the viewport. We can implement all of the scrollable views, such as ListView, GridView using slivers.',
              subWidget: [
                FlutterWidgetCatalogModelDetails(
                  name: 'CupertinoSliverNavigationBar',
                  details: 'An iOS-styled navigation bar with iOS-11-style large titles using slivers.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'CustomScrollView',
                  details: 'A ScrollView that creates custom scroll effects using slivers.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'SliverAppBar',
                  details: 'A material design app bar that integrates with a CustomScrollView.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'SliverChildBuilderDelegate',
                  details: 'A delegate that supplies children for slivers using a builder callback.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'SliverChildListDelegate',
                  details: 'A delegate that supplies children for slivers using an explicit list.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'SliverFixedExtentList',
                  details: 'A sliver that places multiple box children with the same main axis extent in a linear array.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'SliverGrid',
                  details: 'A sliver that places multiple box children in a two dimensional arrangement.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'SliverList',
                  details: 'A sliver that places multiple box children in a linear array along the main axis.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'SliverPadding',
                  details: 'A sliver that applies padding on each side of another sliver.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'SliverPersistentHeader',
                  details:
                      'A sliver whose size varies when the sliver is scrolled to the edge of the viewport opposite the sliver"s GrowthDirection.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'SliverToBoxAdapter',
                  details: 'A sliver that contains a single box widget.',
                  subWidget: [],
                ),
              ],
            ),
          ],
        ),
        FlutterWidgetCatalogModelDetails(
          name: 'Material Components',
          details: 'Visual, behavioral, and motion-rich widgets implementing the Material Design guidelines.',
          isExpanded: false,
          subWidget: [
            FlutterWidgetCatalogModelDetails(
              name: 'App structure and navigation',
              details: '',
              subWidget: [
                FlutterWidgetCatalogModelDetails(
                  name: 'Appbar',
                  details:
                      'A Material Design app bar. An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: bottomNavigationBarTitle,
                  details:
                      'Bottom navigation bars make it easy to explore and switch between top-level views in a single tap. The BottomNavigationBar widget implements this component.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Drawe',
                  details:
                      'A Material Design panel that slides in horizontally from the edge of a Scaffold to show navigation links in an application.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'MaterialApp',
                  details:
                      'A convenience widget that wraps a number of widgets that are commonly required for applications implementing Material Design.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Scaffold',
                  details:
                      'Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'SliverAppBar',
                  details: 'A material design app bar that integrates with a CustomScrollView.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'TabBar',
                  details: 'A Material Design widget that displays a horizontal row of tabs.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'TabBarView',
                  details:
                      'A page view that displays the widget which corresponds to the currently selected tab. Typically used in conjunction with a TabBar.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'TabController',
                  details: 'Coordinates tab selection between a TabBar and a TabBarView.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'TabPageSelector',
                  details:
                      'Displays a row of small circular indicators, one per tab. The selected tab"s indicator is highlighted. Often used in conjunction with a TabBarView.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'WidgetsApp',
                  details: 'A convenience class that wraps a number of widgets that are commonly required for an application.',
                  subWidget: [],
                ),
              ],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Buttons',
              details: '',
              subWidget: [
                FlutterWidgetCatalogModelDetails(
                  name: 'DropdownButton',
                  details: 'Shows the currently selected item and an arrow that opens a menu for selecting another item.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'ElevatedButton',
                  details: 'A Material Design elevated button. A filled button whose material elevates when pressed.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'FloatingActionButton',
                  details:
                      'A floating action button is a circular icon button that hovers over content to promote a primary action in the application. Floating action buttons are...',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'IconButton',
                  details:
                      'An icon button is a picture printed on a Material widget that reacts to touches by filling with color (ink).',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'OutlinedButton',
                  details: 'A Material Design outlined button, essentially a TextButton with an outlined border.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'PopupMenuButton',
                  details:
                      'Displays a menu when pressed and calls onSelected when the menu is dismissed because an item was selected.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'TextButton',
                  details: 'A Material Design text button. A simple flat button without a border outline.',
                  subWidget: [],
                ),
              ],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Input and selections',
              details: '',
              subWidget: [
                FlutterWidgetCatalogModelDetails(
                  name: 'Checkbox',
                  details:
                      'Checkboxes allow the user to select multiple options from a set. The Checkbox widget implements this component.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Date & Time Pickers',
                  details:
                      'Date pickers use a dialog window to select a single date on mobile. Time pickers use a dialog to select a single time (in the...',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Radio',
                  details:
                      'Radio buttons allow the user to select one option from a set. Use radio buttons for exclusive selection if you think that the user needs...',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Slider',
                  details: 'Sliders let users select from a range of values by moving the slider thumb.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Switch',
                  details:
                      'On/off switches toggle the state of a single settings option. The Switch widget implements this component.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'TextField',
                  details:
                      'Touching a text field places the cursor and displays the keyboard. The TextField widget implements this component.',
                  subWidget: [],
                ),
              ],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Dialogs, alerts, and panels',
              details: '',
              subWidget: [
                FlutterWidgetCatalogModelDetails(
                  name: 'AlertDialog',
                  details:
                      'Alerts are urgent interruptions requiring acknowledgement that inform the user about a situation. The AlertDialog widget implements this component.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'BottomSheet',
                  details:
                      'Bottom sheets slide up from the bottom of the screen to reveal more content. You can call showBottomSheet() to implement a persistent bottom sheet or...',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'ExpansionPanel',
                  details:
                      'Expansion panels contain creation flows and allow lightweight editing of an element. The ExpansionPanel widget implements this component.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'SimpleDialog',
                  details:
                      'Simple dialogs can provide additional details or actions about a list item. For example they can display avatars icons clarifying subtext or orthogonal actions (such...',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'SnackBar',
                  details: 'A lightweight message with an optional action which briefly displays at the bottom of the screen.',
                  subWidget: [],
                ),
              ],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Information displays',
              details: '',
              subWidget: [
                FlutterWidgetCatalogModelDetails(
                  name: 'Card',
                  details: 'A Material Design card. A card has slightly rounded corners and a shadow',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Chip',
                  details: 'A Material Design chip. Chips represent complex entities in small blocks, such as a contact.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'CircularProgressIndicator',
                  details: 'A material design circular progress indicator, which spins to indicate that the application is busy.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'DataTable',
                  details:
                      'Data tables display sets of raw data. They usually appear in desktop enterprise products. The DataTable widget implements this component.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'GridView',
                  details:
                      'A grid list consists of a repeated pattern of cells arrayed in a vertical and horizontal layout. The GridView widget implements this component.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Icon',
                  details: 'A Material Design icon.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Image',
                  details: 'A widget that displays an image.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'LinearProgressIndicator',
                  details: 'A material design linear progress indicator, also known as a progress bar.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Tooltip',
                  details:
                      'Tooltips provide text labels that help explain the function of a button or other user interface action. Wrap the button in a Tooltip widget to...',
                  subWidget: [],
                ),
              ],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Layout',
              details: '',
              subWidget: [
                FlutterWidgetCatalogModelDetails(
                  name: 'Divider',
                  details: 'A one logical pixel thick horizontal line, with padding on either side.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'ListTile',
                  details: 'A single fixed-height row that typically contains some text as well as a leading or trailing icon.',
                  subWidget: [],
                ),
                FlutterWidgetCatalogModelDetails(
                  name: 'Stepper',
                  details: 'A Material Design stepper widget that displays progress through a sequence of steps.',
                  subWidget: [],
                ),
              ],
            ),
          ],
        ),
        FlutterWidgetCatalogModelDetails(
          name: 'Painting and effects',
          details: 'These widgets apply visual effects to the children without changing their layout, size, or position.',
          isExpanded: false,
          subWidget: [
            FlutterWidgetCatalogModelDetails(
              name: 'BackdropFilter',
              details:
                  'A widget that applies a filter to the existing painted content and then paints a child. This effect is relatively expensive, especially if the filter...',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'ClipOval',
              details: 'A widget that clips its child using an oval.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'ClipPath',
              details: 'A widget that clips its child using a path.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'ClipRect',
              details: 'A widget that clips its child using a rectangle.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'CustomPaint',
              details: 'A widget that provides a canvas on which to draw during the paint phase.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'DecoratedBox',
              details: 'A widget that paints a Decoration either before or after its child paints.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'FractionalTranslation',
              details: 'A widget that applies a translation expressed as a fraction of the box"s size before painting its child.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Opacity',
              details: 'A widget that makes its child partially transparent.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'RotatedBox',
              details: 'A widget that rotates its child by a integral number of quarter turns.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Transform',
              details: 'A widget that applies a transformation before painting its child.',
              isExpanded: false,
              subWidget: [],
            ),
          ],
        ),
        FlutterWidgetCatalogModelDetails(
          name: 'Scrolling',
          details: 'Scroll multiple widgets as children of the parent.',
          isExpanded: false,
          subWidget: [
            FlutterWidgetCatalogModelDetails(
              name: 'CustomScrollView',
              details: 'A ScrollView that creates custom scroll effects using slivers.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'DraggableScrollableSheet',
              details:
                  'A container for a Scrollable that responds to drag gestures by resizing the scrollable until a limit is reached, and then scrolling.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'GridView',
              details:
                  'A grid list consists of a repeated pattern of cells arrayed in a vertical and horizontal layout. The GridView widget implements this component.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'ListView',
              details:
                  'A scrollable, linear list of widgets. ListView is the most commonly used scrolling widget. It displays its children one after another in the scroll direction....',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'NestedScrollView',
              details:
                  'A scrolling view inside of which can be nested other scrolling views, with their scroll positions being intrinsically linked.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'NotificationListener',
              details: 'A widget that listens for Notifications bubbling up the tree.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'PageView',
              details: 'A scrollable list that works page by page.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'RefreshIndicator',
              details: 'A Material Design pull-to-refresh wrapper for scrollables.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'ReorderableListView',
              details: 'A list whose items the user can interactively reorder by dragging.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'ScrollConfiguration',
              details: 'Controls how Scrollable widgets behave in a subtree.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Scrollable',
              details:
                  'Scrollable implements the interaction model for a scrollable widget, including gesture recognition, but does not have an opinion about how the viewport, which actually displays...',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Scrollbar',
              details: 'A Material Design scrollbar. A scrollbar indicates which portion of a Scrollable widget is actually visible.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'SingleChildScrollView',
              details:
                  'A box in which a single widget can be scrolled. This widget is useful when you have a single box that will normally be entirely...',
              isExpanded: false,
              subWidget: [],
            ),
          ],
        ),
        FlutterWidgetCatalogModelDetails(
          name: 'Styling',
          details: 'Manage the theme of your app, makes your app responsive to screen sizes, or add padding.',
          isExpanded: false,
          subWidget: [
            FlutterWidgetCatalogModelDetails(
              name: 'MediaQuery',
              details: 'Establishes a subtree in which media queries resolve to the given data.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Padding',
              details: 'A widget that insets its child by the given padding.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Theme',
              details:
                  'Applies a theme to descendant widgets. A theme describes the colors and typographic choices of an application.',
              isExpanded: false,
              subWidget: [],
            ),
          ],
        ),
        FlutterWidgetCatalogModelDetails(
          name: 'Text',
          details: 'Display and style text.',
          isExpanded: false,
          subWidget: [
            FlutterWidgetCatalogModelDetails(
              name: 'DefaultTextStyle',
              details: 'The text style to apply to descendant Text widgets without explicit style.',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'RichText',
              details:
                  'The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which...',
              isExpanded: false,
              subWidget: [],
            ),
            FlutterWidgetCatalogModelDetails(
              name: 'Text',
              details: 'A run of text with a single style.',
              isExpanded: false,
              subWidget: [],
            ),
          ],
        ),
      ];
}
