class AnimationAndMotionModel {
  String name;
  String details;
  int numberOfElements;

  AnimationAndMotionModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<AnimationAndMotionModel> fetchAll() => [
        AnimationAndMotionModel(
          name: 'AnimatedAlign',
          details:
              'Animated version of Align which automatically transitions the children position over a given duration whenever the given alignment changes.',
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'AnimatedBuilder',
          details:
              'A general-purpose widget for building animations. AnimatedBuilder is useful for more complex widgets that wish to include animation as part of a larger build function....',
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'AnimatedContainer',
          details: 'A container that gradually changes its values over a period of time.',
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'AnimatedCrossFade',
          details: 'A widget that cross-fades between two given children and animates itself between their sizes.',
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'AnimatedDefaultTextStyle',
          details:
              'Animated version of DefaultTextStyle which automatically transitions the default text style (the text style to apply to descendant Text widgets without explicit style) over a...',
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'AnimatedListState',
          details: 'The state for a scrolling container that animates items when they are inserted or removed.',
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'AnimatedModalBarrier',
          details: 'A widget that prevents the user from interacting with widgets behind itself.',
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'AnimatedOpacity',
          details:
              "Animated version of Opacity which automatically transitions the child's opacity over a given duration whenever the given opacity changes.",
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'AnimatedPhysicalModel',
          details: 'Animated version of PhysicalModel.',
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'AnimatedPositioned',
          details:
              "Animated version of Positioned which automatically transitions the child's position over a given duration whenever the given position changes.",
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'AnimatedSize',
          details:
              "Animated widget that automatically transitions its size over a given duration whenever the given child's size changes.",
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'AnimatedWidget',
          details: 'A widget that rebuilds when the given Listenable changes value.',
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'AnimatedWidgetBaseState',
          details: 'A base class for widgets with implicit animations.',
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'DecoratedBoxTransition',
          details: 'Animated version of a DecoratedBox that animates the different properties of its Decoration.',
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'FadeTransition',
          details: 'Animates the opacity of a widget.',
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'Hero',
          details: 'A widget that marks its child as being a candidate for hero animations.',
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'PositionedTransition',
          details:
              "Animated version of Positioned which takes a specific Animation to transition the child's position from a start position to and end position over the lifetime...",
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'RotationTransition',
          details: 'Animates the rotation of a widget.',
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'ScaleTransition',
          details: 'Animates the scale of transformed widget.',
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'SizeTransition',
          details: 'Animates its own size and clips and aligns the child.',
          numberOfElements: 0,
        ),
        AnimationAndMotionModel(
          name: 'SlideTransition',
          details: 'Animates the position of a widget relative to its normal position.',
          numberOfElements: 0,
        ),
      ];
}
