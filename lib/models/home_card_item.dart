import 'package:flutter/material.dart';

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
        "Buttons",
        Icons.smart_button_rounded,
      ),
      HomeCardItem(
        2,
        "Alert Dialog",
        Icons.add_alert,
      ),
      HomeCardItem(
        3,
        "App Bar",
        Icons.title,
      ),
      HomeCardItem(
        4,
        "Cards",
        Icons.title,
      ),
      HomeCardItem(
        5,
        "Cards",
        Icons.credit_card_rounded,
      ),
      HomeCardItem(
        6,
        "Chart",
        Icons.pie_chart,
      ),
      HomeCardItem(
        7,
        "API Handling",
        Icons.api,
      ),
      HomeCardItem(
        8,
        "Firebase",
        Icons.local_fire_department_rounded,
      ),
      HomeCardItem(
        9,
        "Form",
        Icons.format_align_justify,
      ),
      HomeCardItem(
        10,
        "Google Sheet",
        Icons.explicit_rounded,
      ),
      HomeCardItem(
        11,
        "GridView",
        Icons.grid_on_outlined,
      ),
      HomeCardItem(
        12,
        "ListView",
        Icons.list,
      ),
      HomeCardItem(
        13,
        "TabView",
        Icons.table_view_rounded,
      ),
      HomeCardItem(
        14,
        "BottomNavigation",
        Icons.backup_table_sharp,
      ),
      HomeCardItem(
        15,
        "Table",
        Icons.table_chart,
      ),
      HomeCardItem(
        16,
        "Maps",
        Icons.location_pin,
      ),
      HomeCardItem(
        17,
        "SQLite",
        Icons.cloud,
      ),
      HomeCardItem(
        18,
        "Drawer",
        Icons.navigation,
      ),
    ];
  }
}
