import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class FlutterCountdownTimer extends StatefulWidget {
  final String title;
  final Object model;

  const FlutterCountdownTimer({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);

  @override
  _FlutterCountdownTimerState createState() => _FlutterCountdownTimerState();
}

class _FlutterCountdownTimerState extends State<FlutterCountdownTimer> {
  late CountdownTimerController controller;
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 3;

  @override
  void initState() {
    super.initState();
    controller = CountdownTimerController(endTime: endTime, onEnd: onEnd);
  }

  void onEnd() {
    log('onEnd');
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<ListItem> items = ListItem.listItems();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('App Sync Indicator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: AnimatedList(
            initialItemCount: items.length,
            itemBuilder: (context, index, animation) {
              final ListItem item = items[index];
              return Card(
                color: Colors.white,
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(
                      color: Colors.black54,
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(item.id.toString(), style: const TextStyle(color: Colors.white)),
                  ),
                  title: Text(items[index].title),
                  trailing: CountdownTimer(
                    controller: controller,
                    onEnd: onEnd,
                    endTime: endTime,
                    endWidget: const Icon(
                      Icons.check_circle_outline_rounded,
                      color: Colors.green,
                      size: 35,
                    ),
                    widgetBuilder: (context, time) {
                      if (time == null) {
                        return const Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.green,
                          size: 35,
                        );
                      }
                      return const CircularProgressIndicator();
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Countdown extends AnimatedWidget {
  Countdown({required Key key, required this.animation}) : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  Text build(BuildContext context) {
    final Duration clockTimer = Duration(seconds: animation.value);

    final String timerText = '${clockTimer.inMinutes.remainder(60).toString()}:${(clockTimer.inSeconds.remainder(60) % 60).toString().padLeft(2, '0')}';

    return Text(
      timerText,
      style: TextStyle(
        fontSize: 110,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

class ListItem {
  final int id;
  final String title;
  final Duration duration;

  ListItem({
    required this.id,
    required this.title,
    required this.duration,
  });

  static List<ListItem> listItems() => [
        ListItem(title: 'Update User profile', id: 1, duration: const Duration(seconds: 2)),
        ListItem(title: 'Update Server location', id: 2, duration: const Duration(seconds: 3)),
        ListItem(title: 'Update Survey Projects', id: 3, duration: const Duration(seconds: 5)),
        ListItem(title: 'Update Notices', id: 4, duration: const Duration(seconds: 7)),
        ListItem(title: 'Update App Settings', id: 5, duration: const Duration(seconds: 9)),
        ListItem(title: 'Update Dropdown Items', id: 6, duration: const Duration(seconds: 11)),
        ListItem(title: 'Update Equipment Categories', id: 7, duration: const Duration(seconds: 10)),
        ListItem(title: 'Update Equipment Sub-Categories', id: 8, duration: const Duration(seconds: 12)),
      ];
}
