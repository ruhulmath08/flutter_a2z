class PaintingAndEffectsModel {
  String name;
  String details;
  int numberOfElements;

  PaintingAndEffectsModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<PaintingAndEffectsModel> fetchAll() => [
        PaintingAndEffectsModel(
          name: 'BackdropFilter',
          details:
              'A widget that applies a filter to the existing painted content and then paints a child. This effect is relatively expensive, especially if the filter...',
          numberOfElements: 0,
        ),
        PaintingAndEffectsModel(
          name: 'ClipOval',
          details: 'A widget that clips its child using an oval.',
          numberOfElements: 0,
        ),
        PaintingAndEffectsModel(
          name: 'ClipPath',
          details: 'A widget that clips its child using a path.',
          numberOfElements: 0,
        ),
        PaintingAndEffectsModel(
          name: 'ClipRect',
          details: 'A widget that clips its child using a rectangle.',
          numberOfElements: 0,
        ),
        PaintingAndEffectsModel(
          name: 'CustomPaint',
          details: 'A widget that provides a canvas on which to draw during the paint phase.',
          numberOfElements: 0,
        ),
        PaintingAndEffectsModel(
          name: 'DecoratedBox',
          details: 'A widget that paints a Decoration either before or after its child paints.',
          numberOfElements: 0,
        ),
        PaintingAndEffectsModel(
          name: 'FractionalTranslation',
          details: 'A widget that applies a translation expressed as a fraction of the box"s size before painting its child.',
          numberOfElements: 0,
        ),
        PaintingAndEffectsModel(
          name: 'Opacity',
          details: 'A widget that makes its child partially transparent.',
          numberOfElements: 0,
        ),
        PaintingAndEffectsModel(
          name: 'RotatedBox',
          details: 'A widget that rotates its child by a integral number of quarter turns.',
          numberOfElements: 0,
        ),
        PaintingAndEffectsModel(
          name: 'Transform',
          details: 'A widget that applies a transformation before painting its child.',
          numberOfElements: 0,
        ),
      ];
}
