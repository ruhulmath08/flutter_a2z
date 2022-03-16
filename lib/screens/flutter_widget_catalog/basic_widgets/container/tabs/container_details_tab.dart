import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';

class ContainerDetailsTab extends StatefulWidget {
  String details;
  ContainerDetailsTab({required this.details});

  @override
  _ContainerDetailsTabState createState() => _ContainerDetailsTabState();
}

class _ContainerDetailsTabState extends State<ContainerDetailsTab> {
  @override
  Widget build(BuildContext context) {
    const String note =
        '''NOTE: There can be many more operations that can be performed to container class. Moreover, the container class is used often while developing flutter applications. This is just basics to get started with. ''';
    return SingleChildScrollView(
      padding: appScreenDefaultPadding,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Text(
            widget.details,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10),
          Image.asset('assets/images/flutter_widget_catalog/basic_widgets/flutter_container_image.png'),
          const SizedBox(height: 10),
          const Text(
            note,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
