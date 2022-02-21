class RoutingModel {
  String name;
  String details;
  int numberOfElements;

  RoutingModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<RoutingModel> fetchAll() => [
        RoutingModel(
          name: 'Hero',
          details: 'A widget that marks its child as being a candidate for hero animations.',
          numberOfElements: 0,
        ),
        RoutingModel(
          name: 'Navigator',
          details:
              'A widget that manages a set of child widgets with a stack discipline. Many apps have a navigator near the top of their widget hierarchy...',
          numberOfElements: 0,
        ),
      ];
}
