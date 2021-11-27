import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FlutterAdvancedModel {
  String name;
  String description;
  IconData icon;
  String? documentationLink;
  String? packageLink;
  String? youTubeLink;
  String? gitLink;

  FlutterAdvancedModel({
    required this.name,
    required this.description,
    required this.icon,
    this.documentationLink,
    this.packageLink,
    this.youTubeLink,
    this.gitLink,
  });

  static List<FlutterAdvancedModel> fetchAll() => [
        FlutterAdvancedModel(
          name: methodChannelTitle,
          description:
              'A MethodChannel is used for "communicating with platform plugins using asynchronous method calls". This means that you use this channel to invoke methods on the native side and can return back a value and vise versa.',
          icon: Icons.alt_route_rounded,
          documentationLink: 'https://flutter.dev/docs/development/platform-integration/platform-channels',
          packageLink: '',
          youTubeLink: 'https://www.youtube.com/watch?v=j0cy_Z6IG_c&t=2s',
          gitLink: '',
        ),
        FlutterAdvancedModel(
          name: pixelPerfectResponsiveUiTitle,
          description:
              'Here we use the flutter "flutter_screenutil" package for adapting screen and font size. This package gives us Guaranteed to look good on different models',
          icon: Icons.fit_screen,
          documentationLink: 'https://pub.dev/documentation/flutter_screenutil/latest/',
          packageLink: 'https://pub.dev/packages/flutter_screenutil',
          youTubeLink: 'https://www.youtube.com/watch?v=LWteDQes4Kk',
          gitLink: '',
        ),
        FlutterAdvancedModel(
          name: isolateAndMultithreadingTitle,
          description:
              '''Dart isn't actually single threaded. You can create another thread by creating another Isolate. However, within an Isolate the Dart code runs on a single thread and separate Isolates don't share memory. They can only communicate by messages.''',
          icon: Icons.fit_screen,
          documentationLink: 'https://api.flutter.dev/flutter/dart-isolate/Isolate-class.html',
          packageLink: '',
          youTubeLink: 'https://youtu.be/qrFTt1NZed8',
          gitLink: '',
        ),
        FlutterAdvancedModel(
          name: flutterLocationAsServiceTitle,
          description: '''Wrapping flutter location functionality in a service''',
          icon: FontAwesomeIcons.mapMarkerAlt,
          documentationLink: 'https://pub.dev/documentation/location/latest/',
          packageLink: 'https://pub.dev/packages/location',
          youTubeLink: 'https://www.youtube.com/watch?v=UdBUe_NP-BI&t=493s',
          gitLink: '',
        ),
        FlutterAdvancedModel(
          name: flutterStreamTitle,
          description:
              '''A stream is like a pipe, you put a value on the one end and if there's a listener on the other end that listener will receive that value. A Stream can have multiple listeners and all of those listeners will receive the same value when it's put in the pipeline.''',
          icon: FontAwesomeIcons.stream,
          documentationLink: 'https://www.filledstacks.com/post/a-complete-guide-to-flutter-streams/',
          packageLink: 'https://api.flutter.dev/flutter/dart-async/Stream-class.html',
          youTubeLink: 'https://www.youtube.com/watch?v=53jIxLiCv2E&t=3s',
          gitLink: '',
        ),
      ];
}
