import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LocalStorageModel {
  String name;
  IconData icon;
  String description;
  String documentation;
  String packageLink;
  String youTubeLink;
  String gitLink;

  LocalStorageModel({
    required this.name,
    required this.icon,
    required this.description,
    required this.documentation,
    required this.packageLink,
    required this.youTubeLink,
    required this.gitLink,
  });

  static List<LocalStorageModel> fetchAll() => [
        LocalStorageModel(
          name: flutterSharedPreferencesTitle,
          icon: FontAwesomeIcons.paperclip,
          description:
              '''Wraps platform-specific persistent storage for simple data (NSUserDefaults on iOS and macOS, SharedPreferences on Android, etc.). Data may be persisted to disk asynchronously, and there is no guarantee that writes will be persisted to disk after returning, so this plugin must not be used for storing critical data.''',
          documentation: 'https://pub.dev/documentation/shared_preferences/latest/',
          packageLink: 'https://pub.dev/packages/shared_preferences',
          youTubeLink: '',
          gitLink: '',
        ),
        LocalStorageModel(
          name: flutterWithSqliteTitle,
          icon: FontAwesomeIcons.database,
          description:
              '''Flutter plugin for SQLite, a self-contained, high-reliability, embedded, SQL database engine. Supports iOS, Android and MacOS.''',
          documentation: 'https://pub.dev/documentation/sqflite/latest/',
          packageLink: 'https://pub.dev/packages/sqflite',
          youTubeLink: 'https://youtu.be/UpKrhZ0Hppk',
          gitLink: '',
        ),
        LocalStorageModel(
          name: flutterWithHiveTitle,
          icon: FontAwesomeIcons.hive,
          description: 'Hive is a lightweight and blazing fast key-value database written in pure Dart. Inspired by Bitcask.',
          documentation: 'https://pub.dev/documentation/hive/latest/',
          packageLink: 'https://pub.dev/packages/hive',
          youTubeLink: '',
          gitLink: '',
        ),
        LocalStorageModel(
          name: readAndWriteFileTitle,
          icon: FontAwesomeIcons.file,
          description:
              '''In some cases, you need to read and write files to disk. For example, you may need to persist data across app launches, or download data from the internet and save it for later offline use.''',
          documentation: 'https://flutter.dev/docs/cookbook/persistence/reading-writing-files',
          packageLink: '',
          youTubeLink: '',
          gitLink: '',
        ),
      ];
}
