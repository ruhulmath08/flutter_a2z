class AsyncWidgetModel {
  String name;
  String details;
  int numberOfElements;

  AsyncWidgetModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<AsyncWidgetModel> fetchAll() => [
        AsyncWidgetModel(
          name: 'FutureBuilder',
          details: 'Widget that builds itself based on the latest snapshot of interaction with a Future.',
          numberOfElements: 0,
        ),
        AsyncWidgetModel(
          name: 'StreamBuilder',
          details: 'Widget that builds itself based on the latest snapshot of interaction with a Stream.',
          numberOfElements: 0,
        ),
      ];
}
