class AssetsImagesAndIconsModel {
  String name;
  String details;
  int numberOfElements;

  AssetsImagesAndIconsModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<AssetsImagesAndIconsModel> fetchAll() => [
        AssetsImagesAndIconsModel(
          name: 'AssetBundle',
          details:
              'Asset bundles contain resources, such as images and strings, that can be used by an application. Access to these resources is asynchronous so that they...',
          numberOfElements: 0,
        ),
        AssetsImagesAndIconsModel(
          name: 'Icon',
          details: 'A Material Design icon.',
          numberOfElements: 0,
        ),
        AssetsImagesAndIconsModel(
          name: 'Image',
          details: 'A widget that displays an image.',
          numberOfElements: 0,
        ),
        AssetsImagesAndIconsModel(
          name: 'RawImage',
          details: 'A widget that displays a dart:ui.Image directly.',
          numberOfElements: 0,
        ),
      ];
}
