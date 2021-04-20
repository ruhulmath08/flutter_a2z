import 'package:flutter/material.dart';
import 'package:flutter_a2z/screens/flutter_advanced/flutter_search/manager_model.dart';
import 'package:flutter_a2z/screens/flutter_advanced/flutter_search/search_manager.dart';

class FlutterSearch extends StatefulWidget {
  final String title;

  const FlutterSearch({Key key, this.title}) : super(key: key);

  @override
  _FlutterSearchState createState() => _FlutterSearchState();
}

class _FlutterSearchState extends State<FlutterSearch> {
  List<ManagerModel> managers = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: managers.isEmpty
            ? const Center(child: Text('Search'))
            : ListView.builder(
                itemCount: managers.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          managers[index].img,
                          height: 50,
                          width: 50,
                        ),
                      ),
                      title: Text(managers[index].officerName),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(managers[index].agency),
                          Text(managers[index].phone),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          _navigateAndDisplaySelection(context);
        },
        child: const Text('Search Manager'),
      ),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final List<ManagerModel> result = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const SearchManager(
                title: 'Search Manager',
              )),
    );

    setState(() {
      managers = result;
    });
  }
}
