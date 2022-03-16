import 'package:flutter/material.dart';

class ContainerDemoTab extends StatefulWidget {
  @override
  _ContainerDemoTabState createState() => _ContainerDemoTabState();
}

class _ContainerDemoTabState extends State<ContainerDemoTab> {
  bool isPaddingEnable = false;
  bool isMarginEnable = false;
  bool applyWidthAndHeight = false;
  bool applyAlignment = false;
  bool applyTransform = false;
  bool applyColor = false;
  bool applyDecoration = false;

  //default radio button item
  late Alignment alignment;
  // Group Value for Radio Button.
  int id = 1;

  @override
  void initState() {
    super.initState();
    alignment = Alignment.center;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            color: applyColor ? Colors.red : null,
            padding: isPaddingEnable ? const EdgeInsets.all(20) : null,
            margin: isMarginEnable ? const EdgeInsets.all(10) : null,
            width: applyWidthAndHeight ? double.infinity : null,
            height: applyWidthAndHeight ? 100 : null,
            alignment: alignment,
            transform: applyTransform ? Matrix4.rotationZ(0.1) : null,
            decoration: applyDecoration
                ? BoxDecoration(
                    border: Border.all(width: 3),
                  )
                : null,
            child: const Text(
              'Flutter Container',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            flex: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    visualDensity: const VisualDensity(vertical: -4),
                    value: isPaddingEnable,
                    contentPadding: EdgeInsets.zero,
                    onChanged: (newValue) {
                      setState(() {
                        isPaddingEnable = newValue!;
                      });
                    },
                    title: const Text('Apply Padding'),
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    visualDensity: const VisualDensity(vertical: -4),
                    value: isMarginEnable,
                    contentPadding: EdgeInsets.zero,
                    onChanged: (newValue) {
                      setState(() {
                        isMarginEnable = newValue!;
                      });
                    },
                    title: const Text('Apply Margin'),
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    visualDensity: const VisualDensity(vertical: -4),
                    value: applyWidthAndHeight,
                    contentPadding: EdgeInsets.zero,
                    onChanged: (newValue) {
                      setState(() {
                        applyWidthAndHeight = newValue!;
                      });
                    },
                    title: const Text('Apply width and height'),
                  ),
                  const SizedBox(height: 10),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    visualDensity: const VisualDensity(vertical: -4),
                    value: applyTransform,
                    contentPadding: EdgeInsets.zero,
                    onChanged: (newValue) {
                      setState(() {
                        applyTransform = newValue!;
                      });
                    },
                    title: const Text('Apply transform'),
                  ),
                  const SizedBox(height: 10),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    visualDensity: const VisualDensity(vertical: -4),
                    value: applyDecoration,
                    contentPadding: EdgeInsets.zero,
                    onChanged: (newValue) {
                      setState(() {
                        applyDecoration = newValue!;
                        if (applyDecoration) {
                          applyColor = false;
                        } else {
                          applyColor = true;
                        }
                      });
                    },
                    title: const Text('Apply decoration'),
                  ),
                  const SizedBox(height: 10),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    visualDensity: const VisualDensity(vertical: -4),
                    value: applyColor,
                    contentPadding: EdgeInsets.zero,
                    onChanged: (newValue) {
                      setState(() {
                        applyColor = newValue!;
                        if (applyColor) {
                          applyDecoration = false;
                        } else {
                          applyDecoration = true;
                        }
                      });
                    },
                    title: const Text('Apply color'),
                  ),
                  const SizedBox(height: 10),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    visualDensity: const VisualDensity(vertical: -4),
                    value: applyAlignment,
                    contentPadding: EdgeInsets.zero,
                    onChanged: (newValue) {
                      setState(() {
                        applyAlignment = newValue!;
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
            child: Expanded(
              child: ListView(
                primary: false,
                children: containerAlignmentListData.map((data) {
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
    );
  }
}

class ContainerAlignmentList {
  Alignment alignment;
  int index;

  ContainerAlignmentList({
    required this.alignment,
    required this.index,
  });
}

final containerAlignmentListData = <ContainerAlignmentList>[
  ContainerAlignmentList(
    alignment: Alignment.center,
    index: 1,
  ),
  ContainerAlignmentList(
    alignment: Alignment.centerLeft,
    index: 2,
  ),
  ContainerAlignmentList(
    alignment: Alignment.centerRight,
    index: 3,
  ),
  ContainerAlignmentList(
    alignment: Alignment.topLeft,
    index: 4,
  ),
  ContainerAlignmentList(
    alignment: Alignment.topRight,
    index: 5,
  ),
  ContainerAlignmentList(
    alignment: Alignment.topCenter,
    index: 6,
  ),
  ContainerAlignmentList(
    alignment: Alignment.bottomLeft,
    index: 7,
  ),
  ContainerAlignmentList(
    alignment: Alignment.bottomRight,
    index: 8,
  ),
  ContainerAlignmentList(
    alignment: Alignment.bottomCenter,
    index: 9,
  ),
];
