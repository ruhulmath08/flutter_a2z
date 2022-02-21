import 'package:flutter_a2z/models/flutter_widget_catalog/interaction_widget_model/routing/routing_model.dart';
import 'package:flutter_a2z/models/flutter_widget_catalog/interaction_widget_model/touch_interactions/touch_interactions_model.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class InteractionWidgetModel {
  String name;
  String details;
  int numberOfElements;

  InteractionWidgetModel({
    required this.name,
    required this.details,
    required this.numberOfElements,
  });

  static List<InteractionWidgetModel> fetchAll() => [
        InteractionWidgetModel(
          name: touchInteractionTitle,
          details: '''Usually, your app will need to respond to touch events.''',
          numberOfElements: TouchInteractionsModel.fetchAll().length,
        ),
        InteractionWidgetModel(
          name: routingTitle,
          details: 'When user interact with screen (press or click) go to another page or sow some animations',
          numberOfElements: RoutingModel.fetchAll().length,
        ),
      ];
}
