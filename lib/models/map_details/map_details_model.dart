import 'package:flutter/cupertino.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MapDetailsModel {
  String name;
  IconData icon;
  String description;
  String documentation;
  String packageLink;
  String youTubeLink;
  String gitLink;

  MapDetailsModel({
    required this.name,
    required this.icon,
    required this.description,
    required this.documentation,
    required this.packageLink,
    required this.youTubeLink,
    required this.gitLink,
  });

  static List<MapDetailsModel> fetchAll() => [
        MapDetailsModel(
          name: googleMapTitle,
          icon: FontAwesomeIcons.mapMarked,
          description: '''''',
          documentation: '',
          packageLink: '',
          youTubeLink: '',
          gitLink: '',
        ),
        MapDetailsModel(
          name: osmMapTitle,
          icon: FontAwesomeIcons.mapPin,
          description: '''''',
          documentation: '',
          packageLink: '',
          youTubeLink: '',
          gitLink: '',
        ),
        MapDetailsModel(
          name: huaweiMapTitle,
          icon: FontAwesomeIcons.sitemap,
          description: '''''',
          documentation: '',
          packageLink: '',
          youTubeLink: '',
          gitLink: '',
        ),
        MapDetailsModel(
          name: heatMapTitle,
          icon: FontAwesomeIcons.fire,
          description: '''''',
          documentation: '',
          packageLink: '',
          youTubeLink: '',
          gitLink: '',
        ),
      ];
}
