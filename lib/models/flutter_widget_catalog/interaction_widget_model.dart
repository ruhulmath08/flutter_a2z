class InteractionWidgetModel {
  String name;
  String details;
  List<InteractionWidgetModel>? subWidget;

  InteractionWidgetModel({
    required this.name,
    required this.details,
    this.subWidget,
  });

  static List<InteractionWidgetModel> fetchAll() => [
        InteractionWidgetModel(
          name: 'AbsorbPointer',
          details:
              'A widget that absorbs pointers during hit testing. When absorbing is true, this widget prevents its subtree from receiving pointer events by terminating hit testing...',
        ),
        InteractionWidgetModel(
          name: 'Dismissible',
          details:
              'A widget that can be dismissed by dragging in the indicated direction. Dragging or flinging this widget in the DismissDirection causes the child to slide...',
        ),
        InteractionWidgetModel(
          name: 'DragTarget',
          details:
              'A widget that receives data when a Draggable widget is dropped. When a draggable is dragged on top of a drag target, the drag target...',
        ),
        InteractionWidgetModel(
          name: 'Draggable',
          details:
              'A widget that can be dragged from to a DragTarget. When a draggable widget recognizes the start of a drag gesture, it displays a feedback...',
        ),
        InteractionWidgetModel(
          name: 'DraggableScrollableSheet',
          details:
              'A container for a Scrollable that responds to drag gestures by resizing the scrollable until a limit is reached, and then scrolling.',
        ),
        InteractionWidgetModel(
          name: 'GestureDetector',
          details:
              'A widget that detects gestures. Attempts to recognize gestures that correspond to its non-null callbacks. If this widget has a child, it defers to that...',
        ),
        InteractionWidgetModel(
          name: 'IgnorePointer',
          details:
              'A widget that is invisible during hit testing. When ignoring is true, this widget (and its subtree) is invisible to hit testing. It still consumes...',
        ),
        InteractionWidgetModel(
          name: 'InteractiveViewer',
          details: 'A widget that enables pan and zoom interactions with its child.',
        ),
        InteractionWidgetModel(
          name: 'LongPressDraggable',
          details: 'Makes its child draggable starting from long press.',
        ),
        InteractionWidgetModel(
          name: 'Scrollable',
          details:
              'Scrollable implements the interaction model for a scrollable widget, including gesture recognition, but does not have an opinion about how the viewport, which actually displays...',
        ),
        InteractionWidgetModel(
          name: 'Hero',
          details: 'A widget that marks its child as being a candidate for hero animations.',
        ),
        InteractionWidgetModel(
          name: 'Navigator',
          details:
              'A widget that manages a set of child widgets with a stack discipline. Many apps have a navigator near the top of their widget hierarchy...',
        ),
      ];
}
