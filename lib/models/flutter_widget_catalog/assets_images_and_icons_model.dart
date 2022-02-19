class AssetsImagesAndIconsModel {
  String name;
  String details;
  List<AssetsImagesAndIconsModel>? subWidget;

  AssetsImagesAndIconsModel({
    required this.name,
    required this.details,
    this.subWidget,
  });

  static List<AssetsImagesAndIconsModel> fetchAll() => [
        AssetsImagesAndIconsModel(
          name: 'AssetBundle',
          details:
              'Asset bundles contain resources, such as images and strings, that can be used by an application. Access to these resources is asynchronous so that they...',
          subWidget: [],
        ),
        AssetsImagesAndIconsModel(
          name: 'Icon',
          details: 'A Material Design icon.',
          subWidget: [],
        ),
        AssetsImagesAndIconsModel(
          name: 'Image',
          details: 'A widget that displays an image.',
          subWidget: [],
        ),
        AssetsImagesAndIconsModel(
          name: 'RawImage',
          details: 'A widget that displays a dart:ui.Image directly.',
          subWidget: [],
        ),
      ];
}
