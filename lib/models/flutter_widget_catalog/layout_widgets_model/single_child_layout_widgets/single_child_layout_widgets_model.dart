class SingleChildLayoutWidgetsModel {
  String name;
  String details;
  int numberOfElements;

  SingleChildLayoutWidgetsModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<SingleChildLayoutWidgetsModel> fetchAll() => [
        SingleChildLayoutWidgetsModel(
          name: 'Align',
          details: 'A widget that aligns its child within itself and optionally sizes itself based on the child\ts size.',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'AspectRatio',
          details: 'A widget that attempts to size the child to a specific aspect ratio.',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'Baseline',
          details: 'A widget that positions its child according to the child\ts baseline.',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'Center',
          details: 'A widget that centers its child within itself.',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'ConstrainedBox',
          details: 'A widget that imposes additional constraints on its child.',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'Container',
          details: 'A convenience widget that combines common painting, positioning, and sizing widgets.',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'CustomSingleChildLayout',
          details: 'A widget that defers the layout of its single child to a delegate.',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'Expanded',
          details: 'A widget that expands a child of a Row, Column, or Flex.',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'FittedBox',
          details: 'Scales and positions its child within itself according to fit.',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'FractionallySizedBox',
          details:
              'A widget that sizes its child to a fraction of the total available space. For more details about the layout algorithm, see RenderFractionallySizedOverflowBox.',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'IntrinsicHeight',
          details: 'A widget that sizes its child to the child"s intrinsic height.',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'IntrinsicWidth',
          details: 'A widget that sizes its child to the child"s intrinsic width.',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'LimitedBox',
          details: 'A box that limits its size only when it"s unconstrained.',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'Offstage',
          details:
              'A widget that lays the child out as if it was in the tree, but without painting anything, without making the child available for hit...',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'OverflowBox',
          details:
              'A widget that imposes different constraints on its child than it gets from its parent, possibly allowing the child to overflow the parent.',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'Padding',
          details: 'A widget that insets its child by the given padding.',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'SizedBox',
          details:
              'A box with a specified size. If given a child, this widget forces its child to have a specific width and/or height (assuming values are...',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'SizedOverflowBox',
          details:
              'A widget that is a specific size but passes its original constraints through to its child, which will probably overflow.',
          numberOfElements: 0,
        ),
        SingleChildLayoutWidgetsModel(
          name: 'Transform',
          details: 'A widget that applies a transformation before painting its child.',
          numberOfElements: 0,
        ),
      ];
}
