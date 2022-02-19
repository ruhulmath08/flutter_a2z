class AnimationAndMotionModel {
  String name;
  String details;
  List<AnimationAndMotionModel>? subWidget;

  AnimationAndMotionModel({
    required this.name,
    required this.details,
    this.subWidget,
  });

  static List<AnimationAndMotionModel> fetchAll() => [
        AnimationAndMotionModel(
          name: 'AnimatedAlign',
          details:
              'Animated version of Align which automatically transitions the children position over a given duration whenever the given alignment changes.',
        ),
        AnimationAndMotionModel(
          name: 'AnimatedBuilder',
          details:
              'A general-purpose widget for building animations. AnimatedBuilder is useful for more complex widgets that wish to include animation as part of a larger build function....',
        ),
        AnimationAndMotionModel(
          name: 'AnimatedContainer',
          details: 'A container that gradually changes its values over a period of time.',
        ),
        AnimationAndMotionModel(
          name: 'AnimatedCrossFade',
          details: 'A widget that cross-fades between two given children and animates itself between their sizes.',
        ),
        AnimationAndMotionModel(
          name: 'AnimatedDefaultTextStyle',
          details:
              'Animated version of DefaultTextStyle which automatically transitions the default text style (the text style to apply to descendant Text widgets without explicit style) over a...',
        ),
        AnimationAndMotionModel(
          name: 'AnimatedListState',
          details: 'The state for a scrolling container that animates items when they are inserted or removed.',
        ),
        AnimationAndMotionModel(
          name: 'AnimatedModalBarrier',
          details: 'A widget that prevents the user from interacting with widgets behind itself.',
        ),
        AnimationAndMotionModel(
          name: 'AnimatedOpacity',
          details:
              "Animated version of Opacity which automatically transitions the child's opacity over a given duration whenever the given opacity changes.",
        ),
        AnimationAndMotionModel(
          name: 'AnimatedOpacity',
          details: '',
        ),
        AnimationAndMotionModel(
          name: 'AnimatedPhysicalModel',
          details: 'Animated version of PhysicalModel.',
        ),
        AnimationAndMotionModel(
          name: 'AnimatedPositioned',
          details:
              "Animated version of Positioned which automatically transitions the child's position over a given duration whenever the given position changes.",
        ),
        AnimationAndMotionModel(
          name: 'AnimatedSize',
          details:
              "Animated widget that automatically transitions its size over a given duration whenever the given child's size changes.",
        ),
        AnimationAndMotionModel(
          name: 'AnimatedWidget',
          details: 'A widget that rebuilds when the given Listenable changes value.',
        ),
        AnimationAndMotionModel(
          name: 'AnimatedWidgetBaseState',
          details: 'A base class for widgets with implicit animations.',
        ),
        AnimationAndMotionModel(
          name: 'DecoratedBoxTransition',
          details: 'Animated version of a DecoratedBox that animates the different properties of its Decoration.',
        ),
        AnimationAndMotionModel(
          name: 'FadeTransition',
          details: 'Animates the opacity of a widget.',
        ),
        AnimationAndMotionModel(
          name: 'Hero',
          details: 'A widget that marks its child as being a candidate for hero animations.',
        ),
        AnimationAndMotionModel(
          name: 'PositionedTransition',
          details:
              "Animated version of Positioned which takes a specific Animation to transition the child's position from a start position to and end position over the lifetime...",
        ),
        AnimationAndMotionModel(
          name: 'RotationTransition',
          details: 'Animates the rotation of a widget.',
        ),
        AnimationAndMotionModel(
          name: 'ScaleTransition',
          details: 'Animates the scale of transformed widget.',
        ),
        AnimationAndMotionModel(
          name: 'SizeTransition',
          details: 'Animates its own size and clips and aligns the child.',
        ),
        AnimationAndMotionModel(
          name: 'SlideTransition',
          details: 'Animates the position of a widget relative to its normal position.',
        ),
      ];
}
