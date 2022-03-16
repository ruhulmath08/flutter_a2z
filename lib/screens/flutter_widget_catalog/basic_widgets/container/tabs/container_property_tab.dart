import 'package:flutter/material.dart';

class ContainerPropertyTab extends StatefulWidget {
  @override
  _ContainerPropertyTabState createState() => _ContainerPropertyTabState();
}

class _ContainerPropertyTabState extends State<ContainerPropertyTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList.radio(
        expandedHeaderPadding: EdgeInsets.zero,
        children: containerBasicTileData.map((tile) {
          return ExpansionPanelRadio(
            value: tile.title,
            canTapOnHeader: true,
            headerBuilder: (context, isExpanded) {
              return ListTile(
                title: Text(
                  tile.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            },
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: tile.titles
                    .map(
                      (e) => Text(
                        e.title,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    )
                    .toList(),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class ContainerBasicTile {
  final String title;
  final List<ContainerBasicTile> titles;
  final bool isExpanded;

  const ContainerBasicTile({
    required this.title,
    this.titles = const [],
    this.isExpanded = false,
  });
}

final containerBasicTileData = <ContainerBasicTile>[
  const ContainerBasicTile(
    title: 'Child',
    titles: [
      ContainerBasicTile(
        title: '''Container widget has a property ‘child:’ which stores its children. The child class can be any widget.''',
      ),
    ],
  ),
  const ContainerBasicTile(
    title: 'Color',
    titles: [
      ContainerBasicTile(
        title:
            '''The color property sets the background color of the entire container. Now we can visualize the position of the container using a background color.''',
      ),
    ],
  ),
  const ContainerBasicTile(
    title: 'Height and width',
    titles: [
      ContainerBasicTile(
        title:
            '''By default, a container class takes the space that is required by the child. We can also specify height and width to the container based on our requirements.''',
      ),
    ],
  ),
  const ContainerBasicTile(
    title: 'Margin',
    titles: [
      ContainerBasicTile(
        title:
            '''The margin is used to create an empty space around the container. Observe the white space around the container. Here EdgeInsets.geometry is used to set the margin .all() indicates that margin is present in all four directions equally.''',
      ),
    ],
  ),
  const ContainerBasicTile(
    title: 'Padding',
    titles: [
      ContainerBasicTile(
        title:
            '''The padding is used to give space form the border of the container form its children. Observe the space between the border and the text.''',
      ),
    ],
  ),
  const ContainerBasicTile(
    title: 'Alignment',
    titles: [
      ContainerBasicTile(
        title:
            '''The alignment is used to position the child within the container. We can align in different ways: bottom, bottom center, left, right, etc. here the child is aligned to the bottom center.''',
      ),
    ],
  ),
  const ContainerBasicTile(
    title: 'Decoration',
    titles: [
      ContainerBasicTile(
        title:
            '''The decoration property is used to decorate the box(e.g. give a border). This paints behind the child. Whereas foregroundDecoration paints in front of a child. Let us give a border to the container. But, both color and border color cannot be given.''',
      ),
    ],
  ),
  const ContainerBasicTile(
    title: 'Transform',
    titles: [
      ContainerBasicTile(
        title:
            '''This property of container helps us to rotate the container. We can rotate the container in any axis, here we are rotating in the z-axis.''',
      ),
    ],
  ),
  const ContainerBasicTile(
    title: 'Constraints',
    titles: [
      ContainerBasicTile(
        title: '''When we want to give additional constraints to the child, we can use this property. ''',
      ),
    ],
  ),
  const ContainerBasicTile(
    title: 'ClipBehaviour',
    titles: [
      ContainerBasicTile(
        title:
            '''This property takes in Clip enum as the object. This decides whether the content inside the container will be clipped or not.''',
      ),
    ],
  ),
  const ContainerBasicTile(
    title: 'ForegroundDecoration',
    titles: [
      ContainerBasicTile(
        title: '''This parameter holds Decoration class as the object. It controls the decoration in front of the Container widget.''',
      ),
    ],
  ),
];
