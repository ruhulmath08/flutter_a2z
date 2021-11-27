import 'package:flutter/material.dart';

const double buttonSize = 80;

class ControlMultipleAnimations extends StatefulWidget {
  final String title;
  final Object model;
  const ControlMultipleAnimations({Key? key, required this.title, required this.model}) : super(key: key);

  @override
  _ControlMultipleAnimationsState createState() => _ControlMultipleAnimationsState();
}

class _ControlMultipleAnimationsState extends State<ControlMultipleAnimations> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: Flow(
        delegate: FlowMenuDelegate(controller: controller),
        children: <IconData>[
          Icons.menu,
          Icons.mail,
          Icons.call,
          Icons.notifications,
        ].map<Widget>(buildItem).toList(),
      ),
    );
  }

  Widget buildItem(IconData icon) {
    return SizedBox(
      width: buttonSize,
      height: buttonSize,
      child: FloatingActionButton(
        onPressed: () {
          if (controller.status == AnimationStatus.completed) {
            controller.reverse();
          } else {
            controller.forward();
          }
        },
        elevation: 0,
        splashColor: Colors.black,
        child: Icon(icon, color: Colors.white, size: 45),
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  final Animation<double> controller;
  const FlowMenuDelegate({required this.controller}) : super(repaint: controller);
  @override
  void paintChildren(FlowPaintingContext context) {
    final size = context.size;
    final xStart = size.width - buttonSize;
    final yStart = size.height - buttonSize;

    for (int i = context.childCount - 1; i >= 0; i--) {
      const margin = 8;
      final childSize = context.getChildSize(i)!.width;
      final dx = (childSize + margin) * i;
      final x = xStart; //xStart-dx -> display horizontally
      final y = yStart - dx * controller.value; //yStart-dx -> display vertically

      context.paintChild(
        i,
        transform: Matrix4.translationValues(x, y, 0),
      );
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) => false;
}
