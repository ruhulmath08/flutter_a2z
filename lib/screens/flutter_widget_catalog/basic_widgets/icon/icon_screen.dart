import 'package:flutter/material.dart';

class IconScreen extends StatefulWidget {
  final String title;
  const IconScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<IconScreen> createState() => _IconScreenState();
}

class _IconScreenState extends State<IconScreen> {
  bool applySize = false;
  bool applyColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 350,
            child: Center(
              child: Column(
                children: [
                  Icon(
                    Icons.add_a_photo,
                    color: applyColor ? Colors.red : null,
                    size: applySize ? 300 : null,
                    semanticLabel: 'Hello',
                  ),
                ],
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
                    value: applyColor,
                    contentPadding: EdgeInsets.zero,
                    onChanged: (newValue) {
                      setState(() {
                        applyColor = newValue!;
                      });
                    },
                    title: const Text('Apply Color'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
