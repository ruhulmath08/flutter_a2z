import 'package:flutter/material.dart';
import 'package:flutter_a2z/models/person.dart';

class ConvertJsonToObject extends StatefulWidget {
  final String title;

  const ConvertJsonToObject({Key key, this.title}) : super(key: key);

  @override
  _ConvertJsonToObjectState createState() => _ConvertJsonToObjectState();
}

class _ConvertJsonToObjectState extends State<ConvertJsonToObject> {
  @override
  void initState() {
    super.initState();

    final person = Person(
      name: 'Ruhul',
      creditCardNumber: '123 476 545 453',
      birthday: DateTime.now(),
    );

    final json = person.toJson();
    print('JSON: ${person.toJson()}');

    final newJson = Person.fromJson(json);
    print('New JSON: ${person.toJson()}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: Text(widget.title)),
    );
  }
}
