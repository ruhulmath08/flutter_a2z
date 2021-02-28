import 'package:flutter_a2z/screens/flutter_widgets/expandable_element/expandable_panel_widget/basic_tile_model.dart';

final basicTiles = <BasicTile>[
  const BasicTile(
    title: 'Countries',
    tiles: [
      BasicTile(title: 'Russia'),
      BasicTile(title: 'Canada'),
      BasicTile(title: 'USA'),
      BasicTile(title: 'China'),
      BasicTile(title: 'China'),
      BasicTile(title: 'Australia'),
      BasicTile(title: 'India'),
      BasicTile(title: 'Argentina'),
    ],
  ),
  BasicTile(
    title: 'Dates',
    tiles: [
      BasicTile(title: '2020', tiles: buildMonths()),
      BasicTile(title: '2021', tiles: buildMonths()),
      const BasicTile(title: '2022'),
      const BasicTile(title: '2023'),
    ],
  ),
];

List<BasicTile> buildMonths() => [
      'January',
      'February',
      'March',
      'April',
      'November',
      'December',
    ].map<BasicTile>(buildMonth).toList();

BasicTile buildMonth(String month) {
  return BasicTile(
    title: month,
    tiles: List.generate(28, (index) => BasicTile(title: '$index.')),
  );
}
