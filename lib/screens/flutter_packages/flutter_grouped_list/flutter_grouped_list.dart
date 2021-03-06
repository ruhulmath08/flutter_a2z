import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';
import 'package:grouped_list/grouped_list.dart';

class FlutterGroupedList extends StatefulWidget {
  final String title;

  const FlutterGroupedList({Key key, this.title}) : super(key: key);

  @override
  _FlutterGroupedListState createState() => _FlutterGroupedListState();
}

class _FlutterGroupedListState extends State<FlutterGroupedList> {
  //list of elements
  final List _elements = [
    //Co-Curricular
    {'name': 'BNCC', 'group': 'Co-Curricular'},
    {'name': 'Rovers and Scouts', 'group': 'Co-Curricular'},
    {'name': 'Ranger', 'group': 'Co-Curricular'},
    {'name': 'Red Crescent', 'group': 'Co-Curricular'},
    //Extra-Curricular
    {'name': 'Badhan', 'group': 'Extra-Curricular'},
    {'name': 'Debating Club', 'group': 'Extra-Curricular'},
    {'name': 'Theaters Groups', 'group': 'Extra-Curricular'},
    {'name': 'Reporters Unity', 'group': 'Extra-Curricular'},
    //Hostel
    {'name': 'Muslim Hostel', 'group': 'Hostel'},
    {'name': 'Hemant Kumari Hostel', 'group': 'Hostel'},
    {'name': 'Girls Hostel', 'group': 'Hostel'},
    //Library & Sports
    {'name': 'Library', 'group': 'Library & Sports'},
    {'name': 'Sports', 'group': 'Library & Sports'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GroupedListView<dynamic, String>(
        groupBy: (element) => element['group'] as String,
        elements: _elements,
        useStickyGroupSeparators: true,
        physics: const BouncingScrollPhysics(),
        groupSeparatorBuilder: (String value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        itemBuilder: (context, element) {
          return Card(
            elevation: 8.0,
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              leading: const Icon(Icons.account_circle),
              title: Text(element['name'].toString()),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                CommonWidgets.showToast(context, element['name'].toString());
              },
            ),
          );
        },
      ),
    );
  }
}
