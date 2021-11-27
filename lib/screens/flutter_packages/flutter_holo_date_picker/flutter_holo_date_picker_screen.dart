import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_floating_action_button_for_display_code.dart';
import 'package:flutter_a2z/common_widgets/show_scaffold_message.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';

class FlutterHoloDatePickerScreen extends StatefulWidget {
  final String title;
  final Object model;

  const FlutterHoloDatePickerScreen({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);

  @override
  _FlutterHoloDatePickerScreenState createState() => _FlutterHoloDatePickerScreenState();
}

class _FlutterHoloDatePickerScreenState extends State<FlutterHoloDatePickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: const Text('open picker dialog'),
              onPressed: () async {
                final datePicked = await DatePicker.showSimpleDatePicker(
                  context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1980),
                  lastDate: DateTime(2070),
                  reverse: true,
                  dateFormat: 'dd-MMMM-yyyy',
                  looping: true,
                );
                showScaffoldMessage(context: context, message: 'Date Picked $datePicked');
              },
            ),
            ElevatedButton(
              child: const Text('Show picker widget'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => WidgetPage()));
              },
            )
          ],
        ),
      ),
      floatingActionButton: CommonFloatingActionButtonForDisplayCode(
        heroTag: flutterHoloDatePickerRoute,
        screenTitle: flutterHoloDatePickerTitle,
        filePath: flutterHoloDatePickerFilePath,
        model: widget.model,
      ),
    );
  }
}

class WidgetPage extends StatefulWidget {
  @override
  _WidgetPageState createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: DatePickerWidget(
              looping: true, // default is not looping
              firstDate: DateTime.now(), //DateTime(1960),
              lastDate: DateTime(2050, 1, 2),
              initialDate: DateTime.now(), // DateTime(1994),
              dateFormat: 'dd-MMMM-yyyy',
              locale: DatePicker.localeFromString('en'),
              onChange: (DateTime newDate, _) {
                _selectedDate = newDate;
                log(_selectedDate.toString());
              },
              pickerTheme: const DateTimePickerTheme(
                itemTextStyle: TextStyle(color: Colors.black, fontSize: 19),
                dividerColor: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
