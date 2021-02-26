import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterChipAll extends StatefulWidget {
  final String title;

  const FlutterChipAll({Key key, this.title}) : super(key: key);

  @override
  _FlutterChipAllState createState() => _FlutterChipAllState();
}

class _FlutterChipAllState extends State<FlutterChipAll> {
  bool isSelected;

  @override
  void initState() {
    isSelected = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          FilterChip(
            label: const Text('Popcorn'),
            onSelected: (bool selected) {
              setState(() {});
            },
          ),
          const SizedBox(
            width: 10,
          ),
          FilterChip(
            padding: const EdgeInsets.all(10),
            //shape: ,
            label: const Text('Software Development'),
            labelStyle: TextStyle(color: isSelected ? Colors.white : Colors.black),
            selected: isSelected,
            onSelected: (bool selected) {
              setState(() {
                isSelected = !isSelected;
              });
            },
            selectedColor: Colors.blue,
            checkmarkColor: Colors.white,
          ),
          const SizedBox(height: 20),
          InputChip(
            avatar: CircleAvatar(
              backgroundColor: Colors.grey.shade800,
              child: const Text('AB'),
            ),
            label: const Text('Aaron Burr'),
            onPressed: () {
              print('I am the one thing in life.');
            },
          ),
          // Wrap(
          //   children: List<Widget>.generate(
          //     3,
          //     (int index) {
          //       return ChoiceChip(
          //         label: Text('Item $index'),
          //         selected: _value == index,
          //         onSelected: (bool selected) {
          //           setState(() {
          //             _value = selected ? index : null;
          //           });
          //         },
          //       );
          //     },
          //   ).toList(),
          // ),
        ],
      ),
    );
  }
}
