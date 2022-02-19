import 'package:flutter/material.dart';

void commonAlertDialog({
  required BuildContext context,
  required String title,
  required String description,
  bool? isDisplayListDialog = false,
  Map<String, dynamic>? displayListObject,
  bool? isOkButtonRequired,
  String? okButtonTitle,
  VoidCallback? okButtonPress,
  bool? isCancelButtonRequired,
  String? cancelButtonTitle,
  VoidCallback? cancelButtonPress,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: isDisplayListDialog!
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    ...displayListObject!.entries
                        .map<Widget>(
                          (entry) => Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      '${entry.key}:',
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Expanded(child: Text(entry.value.toString())),
                                ],
                              ),
                              const Divider(),
                            ],
                          ),
                        )
                        .toList(),
                  ],
                ),
              )
            : Text(description),
        actions: [
          if (isOkButtonRequired ?? false)
            ElevatedButton(
              onPressed: okButtonPress,
              child: Text(okButtonTitle ?? 'Ok'),
            )
          else
            const SizedBox(),
          if (isCancelButtonRequired ?? false)
            ElevatedButton(
              onPressed: cancelButtonPress,
              child: Text(cancelButtonTitle ?? 'Cancel'),
            )
          else
            const SizedBox(),
        ],
      );
    },
  );
}
