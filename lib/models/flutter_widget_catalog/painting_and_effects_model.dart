class PaintingAndEffectsModel {
  String name;
  String details;
  List<PaintingAndEffectsModel>? subWidget;

  PaintingAndEffectsModel({
    required this.name,
    required this.details,
    this.subWidget,
  });

  static List<PaintingAndEffectsModel> fetchAll() => [
        PaintingAndEffectsModel(
          name: 'BackdropFilter',
          details:
              'A widget that applies a filter to the existing painted content and then paints a child. This effect is relatively expensive, especially if the filter...',
        ),
        PaintingAndEffectsModel(
          name: 'ClipOval',
          details: 'A widget that clips its child using an oval.',
        ),
        PaintingAndEffectsModel(
          name: 'ClipPath',
          details: 'A widget that clips its child using a path.',
        ),
        PaintingAndEffectsModel(
          name: 'ClipRect',
          details: 'A widget that clips its child using a rectangle.',
        ),
        PaintingAndEffectsModel(
          name: 'CustomPaint',
          details: 'A widget that provides a canvas on which to draw during the paint phase.',
        ),
        PaintingAndEffectsModel(
          name: 'DecoratedBox',
          details: 'A widget that paints a Decoration either before or after its child paints.',
        ),
        PaintingAndEffectsModel(
          name: 'FractionalTranslation',
          details: 'A widget that applies a translation expressed as a fraction of the box"s size before painting its child.',
        ),
        PaintingAndEffectsModel(
          name: 'Opacity',
          details: 'A widget that makes its child partially transparent.',
        ),
        PaintingAndEffectsModel(
          name: 'RotatedBox',
          details: 'A widget that rotates its child by a integral number of quarter turns.',
        ),
        PaintingAndEffectsModel(
          name: 'Transform',
          details: 'A widget that applies a transformation before painting its child.',
        ),
      ];
}
