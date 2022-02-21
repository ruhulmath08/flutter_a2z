class SilverWidgetsModel {
  String name;
  String details;
  int numberOfElements;

  SilverWidgetsModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<SilverWidgetsModel> fetchAll() => [
        SilverWidgetsModel(
          name: 'CupertinoSliverNavigationBar',
          details: 'An iOS-styled navigation bar with iOS-11-style large titles using slivers.',
          numberOfElements: 0,
        ),
        SilverWidgetsModel(
          name: 'CustomScrollView',
          details: 'A ScrollView that creates custom scroll effects using slivers.',
          numberOfElements: 0,
        ),
        SilverWidgetsModel(
          name: 'SliverAppBar',
          details: 'A material design app bar that integrates with a CustomScrollView.',
          numberOfElements: 0,
        ),
        SilverWidgetsModel(
          name: 'SliverChildBuilderDelegate',
          details: 'A delegate that supplies children for slivers using a builder callback.',
          numberOfElements: 0,
        ),
        SilverWidgetsModel(
          name: 'SliverChildListDelegate',
          details: 'A delegate that supplies children for slivers using an explicit list.',
          numberOfElements: 0,
        ),
        SilverWidgetsModel(
          name: 'SliverFixedExtentList',
          details: 'A sliver that places multiple box children with the same main axis extent in a linear array.',
          numberOfElements: 0,
        ),
        SilverWidgetsModel(
          name: 'SliverGrid',
          details: 'A sliver that places multiple box children in a two dimensional arrangement.',
          numberOfElements: 0,
        ),
        SilverWidgetsModel(
          name: 'SliverList',
          details: 'A sliver that places multiple box children in a linear array along the main axis.',
          numberOfElements: 0,
        ),
        SilverWidgetsModel(
          name: 'SliverPadding',
          details: 'A sliver that applies padding on each side of another sliver.',
          numberOfElements: 0,
        ),
        SilverWidgetsModel(
          name: 'SliverPersistentHeader',
          details:
              'A sliver whose size varies when the sliver is scrolled to the edge of the viewport opposite the sliver"s GrowthDirection.',
          numberOfElements: 0,
        ),
        SilverWidgetsModel(
          name: 'SliverToBoxAdapter',
          details: 'A sliver that contains a single box widget.',
          numberOfElements: 0,
        ),
      ];
}
