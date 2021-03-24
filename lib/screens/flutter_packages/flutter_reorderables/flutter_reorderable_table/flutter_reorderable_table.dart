import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reorderables/reorderables.dart';

class FlutterReorderableTable extends StatefulWidget {
  final String title;

  const FlutterReorderableTable({Key key, this.title}) : super(key: key);

  @override
  _FlutterReorderableTableState createState() => _FlutterReorderableTableState();
}

class _FlutterReorderableTableState extends State<FlutterReorderableTable> {
  List<ReorderableTableRow> _itemRows;

  @override
  void initState() {
    // TODO: implement initState
    var data = [
      ['Ruhul', 'Math', 'Programmer', /*'3+', 'Naogaon'*/],
      ['Arif', 'Math', 'Programmer', /*'2+', 'Dhaka'*/],
      ['Zakaria', 'Math', 'Senior Programmer', /*'4+', 'Gazipur'*/],
      ['Shariful', 'Math', 'Senior Programmer', /*'2+', 'Nohakhali'*/],
      ['Farid Ahamed', 'Bangla', 'Senior Programmer', /*'5+', 'Barishal'*/],
    ];

    Widget _textWithPadding(String text) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text(text, textScaleFactor: 1.1),
      );
    }

    _itemRows = data.map((row) {
      return ReorderableTableRow(
        //a key must be specified for each row
        key: ObjectKey(row),
        children: <Widget>[
          _textWithPadding('${row[0]}'),
          _textWithPadding('${row[1]}'),
          _textWithPadding('${row[2]}'),
          // _textWithPadding('${row[3]}'),
          // _textWithPadding('${row[4]}'),
//          Text('${row[4]}'),
        ],
      );
    }).toList();
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      ReorderableTableRow row = _itemRows.removeAt(oldIndex);
      _itemRows.insert(newIndex, row);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ReorderableTable(
        header: ReorderableTableRow(

            children: const[
              Text('Name', textScaleFactor: 1.5),
              Text('Subject', textScaleFactor: 1.5),
              Text('Designation', textScaleFactor: 1.5),
              // Text('Experience', textScaleFactor: 1.5),
              // Text('Home District', textScaleFactor: 1.5),
            ]
        ),
        onReorder: _onReorder,
        children: _itemRows,
      ),
    );
  }
}