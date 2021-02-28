import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDateTimePicker extends StatefulWidget {
  final String title;

  const MyDateTimePicker({Key key, this.title}) : super(key: key);

  @override
  _MyDateTimePickerState createState() => _MyDateTimePickerState();
}

class _MyDateTimePickerState extends State<MyDateTimePicker> {
  DateTime dateTime;

  String getText() {
    if (dateTime == null) {
      return 'Select DateTime';
    } else {
      return DateFormat('MMM-dd-yyyy HH:mm').format(dateTime);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Date-Time Picker',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            ElevatedButton(
              onPressed: () {
                pickDateTime(context);
              },
              style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(40), primary: Colors.blue),
              child: FittedBox(
                child: Text(
                  getText(),
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future pickDateTime(BuildContext context) async {
    final date = await pickDate(context);
    if (date == null) return;

    final time = await pickTime(context);
    if (time == null) return;

    setState(() {
      dateTime = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
    });
  }

  Future<DateTime> pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: dateTime ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (newDate == null) return null;

    return newDate;
  }

  Future<TimeOfDay> pickTime(BuildContext context) async {
    const initialTime = TimeOfDay(hour: 9, minute: 0);
    final newTime = await showTimePicker(
      context: context,
      initialTime: dateTime != null ? TimeOfDay(hour: dateTime.hour, minute: dateTime.minute, ) : initialTime,
    );

    if (newTime == null) return null;

    return newTime;
  }
}
