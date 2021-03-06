import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';

class ExpandableListView extends StatefulWidget {
  final String title;

  const ExpandableListView({Key key, this.title}) : super(key: key);

  @override
  _ExpandableListViewState createState() => _ExpandableListViewState();
}

class _ExpandableListViewState extends State<ExpandableListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) => EntryItem(data[index], context),
        ),
      ),
    );
  }
}

// Create the Widget for the row
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry, this.context);

  final DepartmentEntry entry;
  final BuildContext context;

  // This function recursively creates the multi-level list rows.
  Widget _buildTiles(DepartmentEntry root) {
    if (root.children.isEmpty) {
      return Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Card(
          elevation: 5,
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blueGrey,
              child: Text(
                root.title[0],
                style: const TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
            title: Text(root.title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
            onTap: () {
              CommonWidgets.showToast(context, root.title);
            },
          ),
        ),
      );
    }
    return Card(
      elevation: 5,
      child: ExpansionTile(
        key: PageStorageKey<DepartmentEntry>(root),
        leading: CircleAvatar(
          radius: 23,
          backgroundColor: Colors.red,
          child: Text(root.title[0],
            style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
            ),
          ),
        ),
        title: Text(
          root.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.bold
          ),
        ),
        children: root.children.map<Widget>(_buildTiles).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}

//Expandable ListView
class DepartmentEntry {
  final String title;
  final List<DepartmentEntry> children;

  DepartmentEntry(this.title, [this.children = const <DepartmentEntry>[]]);
}

final List<DepartmentEntry> data = <DepartmentEntry>[
  DepartmentEntry(
    'Arts',
    <DepartmentEntry>[
      DepartmentEntry('Bengali'),
      DepartmentEntry('English'),
      DepartmentEntry('Arabic'),
      DepartmentEntry('History'),
      DepartmentEntry('Islamic History'),
      DepartmentEntry('Philosophy'),
      DepartmentEntry('Sanskrit'),
      DepartmentEntry('Urdu'),
    ],
  ),
  DepartmentEntry(
    'Science',
    <DepartmentEntry>[
      DepartmentEntry('Botany'),
      DepartmentEntry('Chemistry'),
      DepartmentEntry('Physics'),
      DepartmentEntry('Zoology'),
      DepartmentEntry('Geography'),
      DepartmentEntry('Psychology'),
      DepartmentEntry('Statistics'),
      DepartmentEntry('Mathematics'),
    ],
  ),
  DepartmentEntry(
    'Social Science',
    <DepartmentEntry>[
      DepartmentEntry('Social Science'),
      DepartmentEntry('Political Science'),
      DepartmentEntry('Social Work'),
      DepartmentEntry('Economics'),
    ],
  ),
  DepartmentEntry(
    'Business Science',
    <DepartmentEntry>[
      DepartmentEntry('Marketing'),
      DepartmentEntry('Finance and Banking'),
      DepartmentEntry('Accounting'),
      DepartmentEntry('Management'),
    ],
  ),
  DepartmentEntry(
    'HSC',
    <DepartmentEntry>[
      DepartmentEntry('Science'),
      DepartmentEntry('Human Studies'),
      DepartmentEntry('Business Studies'),
    ],
  ),
  DepartmentEntry(
    'ICT',
    <DepartmentEntry>[
      DepartmentEntry('Science'),
    ],
  ),
];
