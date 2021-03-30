import 'package:flutter/material.dart';
import 'package:flutter_a2z/screens/flutter_widgets/flutter_reorderable_list/RecordableListUserModel.dart';
import 'package:flutter_a2z/screens/flutter_widgets/flutter_reorderable_list/users_data.dart';
import 'package:toast/toast.dart';

class FlutterReorderableList extends StatefulWidget {
  final String title;

  const FlutterReorderableList({Key key, this.title}) : super(key: key);

  @override
  _FlutterReorderableListState createState() => _FlutterReorderableListState();
}

class _FlutterReorderableListState extends State<FlutterReorderableList> {
  List<RecordableListUserModel> users = [];

  @override
  void initState() {
    super.initState();
    users = getUsersData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: () {
              // final int length = users.length - 1;
              // for (int i = 0; i <= length; i++) {
              //   print('Index: ${users[i].name}');
              // }
              showDialogForDisplayUSer(context, users);
            },
          ),
        ],
      ),
      body: ReorderableListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 3),
        itemCount: users.length,
        onReorder: (oldIndex, newIndex) {
          setState(() {
            final index = newIndex > oldIndex ? newIndex - 1 : newIndex;
            final user = users.removeAt(oldIndex);
            users.insert(index, user);
          });
        },
        itemBuilder: (BuildContext context, int index) {
          return Card(
            key: ValueKey(users[index]),
            elevation: 5,
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(users[index].urlImage),
              ),
              title: Text(users[index].name),
              subtitle: Text(users[index].companyName),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Toast.show('Edit: ${users[index].name}', context, duration: Toast.LENGTH_LONG);
                    },
                    icon: const Icon(Icons.edit_rounded),
                    color: Colors.green,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        users.removeAt(index);
                      });
                    },
                    icon: const Icon(Icons.delete),
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void showDialogForDisplayUSer(BuildContext context, List<RecordableListUserModel> userList) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: const [
              Icon(Icons.list_rounded, color: Colors.black),
              Text('All User List'),
            ],
          ),
          content: SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: userList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                  title: Text(
                    userList[index].name.toString(),
                  ),
                );
              },
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}
