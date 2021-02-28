import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDateRangePicker extends StatefulWidget {
  final String title;

  const MyDateRangePicker({Key key, this.title}) : super(key: key);

  @override
  _MyDateRangePickerState createState() => _MyDateRangePickerState();
}

class _MyDateRangePickerState extends State<MyDateRangePicker> {
  DateTimeRange dateTimeRange;





  String getFrom() {
    if (dateTimeRange == null) {
      return 'From';
    } else {
      return DateFormat('MMM-dd-yyyy').format(dateTimeRange.start);
    }
  }

  String getUntil() {
    if (dateTimeRange == null) {
      return 'Until';
    } else {
      return DateFormat('MMM-dd-yyyy').format(dateTimeRange.end);
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
              'Date-Range Picker',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      dateTimeRangeFunction(context);
                    },
                    style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(40), primary: Colors.blue),
                    child: FittedBox(
                      child: Text(
                        getFrom(),
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_rounded,
                  size: 30,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      dateTimeRangeFunction(context);
                    },
                    style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(40), primary: Colors.blue),
                    child: FittedBox(
                      child: Text(
                        getUntil(),
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  Future dateTimeRangeFunction(BuildContext context) async {
    final initialDateRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(const Duration(hours: 24 * 3)),
    );

    final newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 20),
      lastDate: DateTime(DateTime.now().year + 20),
      initialDateRange: dateTimeRange ?? initialDateRange,
    );

    //when press cancel button in DateRangePicker
    if (newDateRange == null) return;
    setState(() {
      dateTimeRange = newDateRange;
    });
  }
}