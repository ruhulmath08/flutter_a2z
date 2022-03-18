import 'package:flutter/material.dart';

class FlutterLogoScreen extends StatefulWidget {
  final String title;
  const FlutterLogoScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<FlutterLogoScreen> createState() => _FlutterLogoScreenState();
}

class _FlutterLogoScreenState extends State<FlutterLogoScreen> {
  bool applyFlutterLogoStyle = false;
  bool applySize = false;
  bool applyTextColor = false;
  late FlutterLogoStyle flutterLogoStyle;
  int id = 1;

  @override
  void initState() {
    flutterLogoStyle = FlutterLogoStyle.stacked;
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: FlutterLogo(
                size: applySize ? 300 : null,
                style: flutterLogoStyle,
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    visualDensity: const VisualDensity(vertical: -4),
                    value: applySize,
                    contentPadding: EdgeInsets.zero,
                    onChanged: (newValue) {
                      setState(() {
                        applySize = newValue!;
                      });
                    },
                    title: const Text('Apply Size'),
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    visualDensity: const VisualDensity(vertical: -4),
                    value: applyFlutterLogoStyle,
                    contentPadding: EdgeInsets.zero,
                    onChanged: (newValue) {
                      setState(() {
                        applyFlutterLogoStyle = newValue!;
                      });
                    },
                    title: const Text('Apply Flutter LogoStyle'),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: applyFlutterLogoStyle,
            child: Expanded(
              child: ListView(
                primary: false,
                children: flutterLogoStyleListList.map((data) {
                  //return Text('n');
                  return SingleChildScrollView(
                    child: RadioListTile(
                      title: Text(data.flutterLogoStyle.toString()),
                      value: data.index,
                      groupValue: id,
                      onChanged: (newValue) {
                        setState(() {
                          id = data.index;
                          flutterLogoStyle = data.flutterLogoStyle;
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FlutterLogoStyleList {
  FlutterLogoStyle flutterLogoStyle;
  int index;

  FlutterLogoStyleList({
    required this.flutterLogoStyle,
    required this.index,
  });
}

final flutterLogoStyleListList = <FlutterLogoStyleList>[
  FlutterLogoStyleList(
    flutterLogoStyle: FlutterLogoStyle.stacked,
    index: 1,
  ),
  FlutterLogoStyleList(
    flutterLogoStyle: FlutterLogoStyle.horizontal,
    index: 2,
  ),
  FlutterLogoStyleList(
    flutterLogoStyle: FlutterLogoStyle.markOnly,
    index: 3,
  ),
];
