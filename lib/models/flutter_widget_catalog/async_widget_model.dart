class AsyncWidgetModel {
  String name;
  String details;
  List<AsyncWidgetModel>? subWidget;

  AsyncWidgetModel({
    required this.name,
    required this.details,
    this.subWidget,
  });

  static List<AsyncWidgetModel> fetchAll() => [
        AsyncWidgetModel(
          name: 'FutureBuilder',
          details: 'Widget that builds itself based on the latest snapshot of interaction with a Future.',
        ),
        AsyncWidgetModel(
          name: 'StreamBuilder',
          details: 'Widget that builds itself based on the latest snapshot of interaction with a Stream.',
        ),
      ];
}
