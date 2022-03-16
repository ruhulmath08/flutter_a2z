import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_floating_action_button_for_display_code.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class NestedListviewAndColumnScreen extends StatelessWidget {
  final String title;
  final Object model;

  const NestedListviewAndColumnScreen({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      //we can also use ListView instead of SingleChildScrollView->Column
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              color: Colors.red,
              child: const Center(
                child: Text(
                  'Some Widget',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true, //limit height
              primary: false, //disable scrolling
              itemCount: 30,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item: ${index + 1}'),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: CommonFloatingActionButtonForDisplayCode(
        heroTag: nestedListviewAndColumnTitle,
        screenTitle: nestedListviewAndColumnTitle,
        filePath: nestedListviewAndColumnFilePath,
        model: model,
      ),
    );
  }
}
