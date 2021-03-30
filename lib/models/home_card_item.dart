import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class HomeCardItem {
  int id;
  String title;
  IconData icon;

  HomeCardItem(
    this.id,
    this.title,
    this.icon,
  );

  static List<HomeCardItem> fetchAll() {
    return [
      HomeCardItem(
        1,
        'Buttons',
        Icons.smart_button_rounded,
      ),
      HomeCardItem(
        2,
        'Alert Dialog',
        Icons.add_alert,
      ),
      HomeCardItem(
        3,
        'App Bar',
        Icons.title,
      ),
      HomeCardItem(
        4,
        'App Bar',
        Icons.title,
      ),
      HomeCardItem(
        5,
        FLUTTER_CARD_SCREEN_TITLE,
        Icons.credit_card_rounded,
      ),
      HomeCardItem(
        6,
        'Chart',
        Icons.pie_chart,
      ),
      HomeCardItem(
        7,
        'API Handling',
        Icons.api,
      ),
      HomeCardItem(
        8,
        'Firebase',
        Icons.local_fire_department_rounded,
      ),
      HomeCardItem(
        9,
        'Form',
        Icons.format_align_justify,
      ),
      HomeCardItem(
        10,
        'Google Sheet',
        Icons.explicit_rounded,
      ),
      HomeCardItem(
        11,
        'GridView',
        Icons.grid_on_outlined,
      ),
      HomeCardItem(
        12,
        'ListView',
        Icons.list,
      ),
      HomeCardItem(
        13,
        'TabView',
        Icons.table_view_rounded,
      ),
      HomeCardItem(
        14,
        'BottomNavigation',
        Icons.backup_table_sharp,
      ),
      HomeCardItem(
        15,
        FLUTTER_TABLE_SCREEN_TITLE,
        Icons.table_chart,
      ),
      HomeCardItem(
        16,
        'Maps',
        Icons.location_pin,
      ),
      HomeCardItem(
        17,
        'SQLite',
        Icons.cloud,
      ),
      HomeCardItem(
        18,
        'Drawer',
        Icons.navigation,
      ),
      HomeCardItem(
        19,
        'Flutter CRUD',
        Icons.add_to_photos_rounded,
      ),
      HomeCardItem(
        20,
        'Flutter Chip',
        Icons.check_circle,
      ),
      HomeCardItem(
        21,
        'Biometric Auth',
        Icons.fingerprint_outlined,
      ),
      HomeCardItem(
        22,
        FLUTTER_PACKAGES_SCREEN_TITLE,
        Icons.waves,
      ),
      HomeCardItem(
        23,
        EXPANDABLE_ELEMENT_SCREEN_TITLE,
        Icons.expand,
      ),
      HomeCardItem(
        24,
        FLUTTER_DATETIME_PICKER_SCREEN_TITLE,
        Icons.date_range,
      ),
      HomeCardItem(
        25,
        FLUTTER_REORDERABLES_LIST_TITLE,
        Icons.list_alt_rounded,
      ),
    ];
  }
}
