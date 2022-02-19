import 'package:flutter_a2z/routing/routing_constants.dart';

class AppStructureAndNavigationModel {
  String name;
  String details;
  List<AppStructureAndNavigationModel>? subWidget;

  AppStructureAndNavigationModel({
    required this.name,
    required this.details,
    this.subWidget,
  });

  static List<AppStructureAndNavigationModel> fetchAll() => [
        AppStructureAndNavigationModel(
          name: 'Appbar',
          details:
              'A Material Design app bar. An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar.',
          subWidget: [],
        ),
        AppStructureAndNavigationModel(
          name: bottomNavigationBarTitle,
          details:
              'Bottom navigation bars make it easy to explore and switch between top-level views in a single tap. The BottomNavigationBar widget implements this component.',
          subWidget: [],
        ),
        AppStructureAndNavigationModel(
          name: 'Drawe',
          details:
              'A Material Design panel that slides in horizontally from the edge of a Scaffold to show navigation links in an application.',
          subWidget: [],
        ),
        AppStructureAndNavigationModel(
          name: 'MaterialApp',
          details:
              'A convenience widget that wraps a number of widgets that are commonly required for applications implementing Material Design.',
          subWidget: [],
        ),
        AppStructureAndNavigationModel(
          name: 'Scaffold',
          details:
              'Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets.',
          subWidget: [],
        ),
        AppStructureAndNavigationModel(
          name: 'SliverAppBar',
          details: 'A material design app bar that integrates with a CustomScrollView.',
          subWidget: [],
        ),
        AppStructureAndNavigationModel(
          name: 'TabBar',
          details: 'A Material Design widget that displays a horizontal row of tabs.',
          subWidget: [],
        ),
        AppStructureAndNavigationModel(
          name: 'TabBarView',
          details:
              'A page view that displays the widget which corresponds to the currently selected tab. Typically used in conjunction with a TabBar.',
          subWidget: [],
        ),
        AppStructureAndNavigationModel(
          name: 'TabController',
          details: 'Coordinates tab selection between a TabBar and a TabBarView.',
          subWidget: [],
        ),
        AppStructureAndNavigationModel(
          name: 'TabPageSelector',
          details:
              'Displays a row of small circular indicators, one per tab. The selected tab"s indicator is highlighted. Often used in conjunction with a TabBarView.',
          subWidget: [],
        ),
        AppStructureAndNavigationModel(
          name: 'WidgetsApp',
          details: 'A convenience class that wraps a number of widgets that are commonly required for an application.',
          subWidget: [],
        ),
      ];
}
