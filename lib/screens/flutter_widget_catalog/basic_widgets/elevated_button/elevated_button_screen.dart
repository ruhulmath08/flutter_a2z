import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';
import 'package:flutter_a2z/common_widgets/show_flutter_toast.dart';
import 'package:flutter_a2z/models/common_model/flutter_lignment_model.dart';

class ElevatedButtonScreen extends StatefulWidget {
  final String title;
  const ElevatedButtonScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<ElevatedButtonScreen> createState() => _ElevatedButtonScreenState();
}

class _ElevatedButtonScreenState extends State<ElevatedButtonScreen> {
  bool applyIcon = false;
  bool applyPadding = false;
  bool applyElevation = false;
  bool applySize = false;
  bool applyColor = false;
  bool applyAlignment = false;

  // Group Value for Radio Button.
  int id = 1;
  Alignment alignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: appScreenDefaultPadding,
        child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: () {
                showFlutterToast(context: context, message: 'Clicked on Elevated Button');
              },
              style: ElevatedButton.styleFrom(
                primary: applyColor ? Colors.red : null, //background
                onPrimary: applyColor ? Colors.black : null, // foreground
                minimumSize: applySize ? const Size(double.infinity, 55) : null,
                padding: applyPadding ? const EdgeInsets.all(30) : null,
                elevation: applyElevation ? 10 : null,
                alignment: alignment,
              ),
              icon: applyIcon ? const Icon(Icons.android) : const SizedBox(),
              label: const Text('Flutter Elevated Button'),
            ),
            const SizedBox(height: 20),
            Expanded(
              flex: 0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      visualDensity: const VisualDensity(vertical: -4),
                      value: applyIcon,
                      contentPadding: EdgeInsets.zero,
                      onChanged: (newValue) {
                        setState(() {
                          applyIcon = newValue!;
                        });
                      },
                      title: const Text('Apply Icon'),
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      visualDensity: const VisualDensity(vertical: -4),
                      value: applyPadding,
                      contentPadding: EdgeInsets.zero,
                      onChanged: (newValue) {
                        setState(() {
                          applyPadding = newValue!;
                        });
                      },
                      title: const Text('Apply Padding'),
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      visualDensity: const VisualDensity(vertical: -4),
                      value: applyElevation,
                      contentPadding: EdgeInsets.zero,
                      onChanged: (newValue) {
                        setState(() {
                          applyElevation = newValue!;
                        });
                      },
                      title: const Text('Apply Elevation'),
                    ),
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
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      visualDensity: const VisualDensity(vertical: -4),
                      value: applyAlignment,
                      contentPadding: EdgeInsets.zero,
                      onChanged: (newValue) {
                        setState(() {
                          applyAlignment = newValue!;
                          if (!applyAlignment) alignment = Alignment.center;
                        });
                      },
                      title: const Text('Apply alignment'),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: applyAlignment,
              child: Flexible(
                child: ListView(
                  primary: false,
                  shrinkWrap: true,
                  children: flutterAlignmentListModelData.map((data) {
                    //return Text('n');
                    return SingleChildScrollView(
                      child: RadioListTile(
                        title: Text(data.alignment.toString()),
                        value: data.index,
                        groupValue: id,
                        onChanged: (newValue) {
                          setState(() {
                            id = data.index;
                            alignment = data.alignment;
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
      ),
    );
  }
}
