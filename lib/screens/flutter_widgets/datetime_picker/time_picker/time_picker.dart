import 'package:flutter/material.dart';

class MyTimePicker extends StatefulWidget {
  final String title;

  const MyTimePicker({Key key, this.title}) : super(key: key);

  @override
  _MyTimePickerState createState() => _MyTimePickerState();
}

class _MyTimePickerState extends State<MyTimePicker> {
  TimeOfDay timePicker;

  String getTime() {
    if (timePicker == null) {
      return 'Select Time';
    } else {
      // final hours = timePicker.hour.toString().padLeft(2, '0');
      // final minutes = timePicker.minute.toString().padLeft(2, '0');
      // final ampm = timePicker.period.toString().split('.')[1];
      // return '$hours : $minutes : $ampm';
      return timePicker.format(context).padLeft(2, '0');
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
              'Time Picker',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            ElevatedButton(
              onPressed: () {
                timePickerFunction(context);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(40),
                primary: Colors.blue,
              ),
              child: FittedBox(
                child: Text(
                  getTime(),
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<TimeOfDay> timePickerFunction(BuildContext context) async {
    const initialTime = TimeOfDay(hour: 9, minute: 0);
    final newTime = await showTimePicker(
      context: context,
      initialTime: timePicker ?? initialTime,
    );

    //when press cancel button in timePicker
    if (newTime == null) return null;
    setState(() {
      timePicker = newTime;
    });
  }
}
