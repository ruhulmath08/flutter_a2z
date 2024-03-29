import 'package:flutter_a2z/routing/routing_constants.dart';

class FlutterComplexWidgetModel {
  String name;
  String description;
  String? documentation;
  String packageLink;
  String youTubeLink;
  String gitLink;

  FlutterComplexWidgetModel({
    required this.name,
    required this.description,
    required this.documentation,
    required this.packageLink,
    required this.youTubeLink,
    required this.gitLink,
  });

  static List<FlutterComplexWidgetModel> fetchAll() => [
        FlutterComplexWidgetModel(
          name: 'Pinch to zoom an image',
          description:
              'Flutter Pinch To Zoom. Add Pinch To Zoom to zoom in and out images with the Flutter InteractiveViewer Widget. The right way 2021',
          documentation: '',
          packageLink: '',
          youTubeLink: 'https://www.youtube.com/watch?v=va6smNoyqMY&t=0s',
          gitLink: '',
        ),
        FlutterComplexWidgetModel(
          name: maskTextWithImageTitle,
          description:
              'Mask a Text with an Image in Flutter by using the ShaderMask and ImageShader to create a clipping mask with Flutter.',
          documentation: '',
          packageLink: '',
          youTubeLink: 'https://www.youtube.com/watch?v=va6smNoyqMY&t=0s',
          gitLink: '',
        ),
        FlutterComplexWidgetModel(
          name: controlMultipleAnimationTitle,
          description:
              'How to use the Flow Widget in Flutter to control multiple animations, Like multiple button inside floating action button',
          documentation: '',
          packageLink: '',
          youTubeLink: 'https://youtu.be/r3PSSD5YH00',
          gitLink: '',
        ),
        FlutterComplexWidgetModel(
          name: setStateInPopUpAlertDialogTitle,
          description:
              'How to call all setState within a Popup Alert Dialog in Flutter using the Stateful Builder and change the state',
          documentation: '',
          packageLink: '',
          youTubeLink: 'https://youtu.be/THMcgdtUtFQ',
          gitLink: '',
        ),
        FlutterComplexWidgetModel(
          name: flutterFocusTitle,
          description: '''Flutter focus node details and practical examples''',
          documentation: '',
          packageLink: '',
          youTubeLink: '',
          gitLink: '',
        ),
        FlutterComplexWidgetModel(
          name: transparentAppBarTitle,
          description:
              '''Create a transparent AppBar in Flutter and show a background image or display the body under the AppBar of the Scaffold Widget in Flutter.''',
          documentation: '',
          packageLink: '',
          youTubeLink: '',
          gitLink: '',
        ),
        FlutterComplexWidgetModel(
          name: nestedListviewAndColumnTitle,
          description:
              '''How to display nested ListViews and Columns in Flutter, use ListView inside Column, ListView inside ListView or SingleChildScrollView.''',
          documentation: '',
          packageLink: '',
          youTubeLink: 'https://www.youtube.com/watch?v=ZpHuAbYWL3w',
          gitLink: '',
        ),
        FlutterComplexWidgetModel(
          name: infiniteScrollingListViewTitle,
          description:
              '''How to create an Infinite Scrolling ListView with pagination in Flutter. The Infinite Loading ListView uses HTTP GET to fetch and load more data from a server. At the end the Flutter Pull To Refresh Indicator is added to the ListView.''',
          documentation: '',
          packageLink: '',
          youTubeLink: 'https://www.youtube.com/watch?v=eENDlIgadr4',
          gitLink: '',
        ),
        FlutterComplexWidgetModel(
          name: flutterClipPathTitle,
          description:
              '''How to clip widgets using ClipPath and Bezier Curves in Flutter. Also use the ClipPath Generator tool ShapeMaker to create custom paths.''',
          documentation: '',
          packageLink: '',
          youTubeLink: 'https://www.youtube.com/watch?v=xuatM4pZkNk',
          gitLink: '',
        ),
      ];
}
