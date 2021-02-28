import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDatePicker extends StatefulWidget {
  final String title;

  const MyDatePicker({Key key, this.title}) : super(key: key);

  @override
  _MyDatePickerState createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime datePicker;

  String getDate() {
    if (datePicker == null) {
      return 'Selected Date';
    } else {
      return DateFormat('MMM-dd-yyyy').format(datePicker);
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
              'Date Picker',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            ElevatedButton(
              onPressed: () {
                datePickerFunction(context);
              },
              style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(40), primary: Colors.blue),
              child: FittedBox(
                child: Text(
                  getDate(),
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<DateTime> datePickerFunction(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: datePicker ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 20),
      lastDate: DateTime(DateTime.now().year + 20),
    );

    //when press cancel button in dateTimePicker
    if (newDate == null) return null;
    setState(() {
      datePicker = newDate;
    });
  }
}
