import 'package:flutter/material.dart';
import 'package:flutter_a2z/screens/flutter_advanced/flutter_search/manager_model.dart';

List<ManagerModel> managers = ManagerModel.officers;
List<String> allNames = managers.map((e) => e.officerName).toList();
Color mainColor = const Color(0xff1B3954);
Color textColor = const Color(0xff727272);
Color accentColor = const Color(0xff16ADE1);
Color whiteText = const Color(0xffF5F5F5);

class SearchManager extends StatefulWidget {
  final String title;

  const SearchManager({Key key, this.title}) : super(key: key);

  @override
  _SearchManagerState createState() => _SearchManagerState();
}

class _SearchManagerState extends State<SearchManager> {
  List<ManagerModel> managers = ManagerModel.officers;
  List<ManagerModel> searchManager = [];
  List<bool> _isChecked;

  TextEditingController query = TextEditingController();
  String filter = '';

  List<ManagerModel> selectManagerFromSearch = [];

  @override
  void dispose() {
    query.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 60,
              child: TextField(
                controller: query,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Search manager...',
                  suffix: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      print(query.text.toString());
                      if (query.text.isNotEmpty) {
                        final List<ManagerModel> tmpList = [];
                        for (int i = 0; i < managers.length; i++) {
                          if (managers[i].officerName.toLowerCase().contains(query.text.toLowerCase().toString())) {
                            tmpList.add(managers[i]);
                          }
                        }
                        setState(() {
                          searchManager = tmpList;
                          _isChecked = List<bool>.filled(searchManager.length, false);
                        });
                      }
                      query.clear();
                      FocusScope.of(context).unfocus();
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: searchManager.isEmpty
                  ? const Center(
                      child: Text('Search Manager'),
                    )
                  : ListView.builder(
                      itemCount: searchManager.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            onTap: () {
                              print(_isChecked[index].toString());
                            },
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                managers[index].img,
                                height: 50,
                                width: 50,
                              ),
                            ),
                            title: Text(searchManager[index].officerName),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(managers[index].agency),
                                Text(managers[index].phone),
                              ],
                            ),
                            trailing: SizedBox(
                              child: Checkbox(
                                value: _isChecked[index],
                                onChanged: (newValue) {
                                  setState(() {
                                    _isChecked[index] = newValue;
                                    if (newValue == true) {
                                      selectManagerFromSearch.add(searchManager[index]);
                                    } else {
                                      selectManagerFromSearch.remove(searchManager[index]);
                                    }
                                  });
                                  // for (int i = 0; i < _isChecked.length; i++) {
                                  //   if (_isChecked[index] == true) {
                                  //     selectManagerFromSearch.add(_isChecked[index].);
                                  //   }
                                  // }
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, selectManagerFromSearch);
          },
          child: const Text('Add Manager'),
        ),
      ),
    );
  }
}
