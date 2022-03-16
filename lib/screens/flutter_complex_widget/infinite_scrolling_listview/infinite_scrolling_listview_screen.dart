import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';
import 'package:flutter_a2z/common_widgets/common_floating_action_button_for_display_code.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:http/http.dart' as http;

class InfiniteScrollingListViewScreen extends StatefulWidget {
  final String title;
  final Object model;

  const InfiniteScrollingListViewScreen({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);

  @override
  _InfiniteScrollingListViewScreenState createState() => _InfiniteScrollingListViewScreenState();
}

class _InfiniteScrollingListViewScreenState extends State<InfiniteScrollingListViewScreen> {
  final _controller = ScrollController();
  List<String> items = [];
  int page = 1;
  bool hasMore = true;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    fetchData();

    _controller.addListener(() {
      //if reach the end of the list fetch some more data from server
      if (_controller.position.maxScrollExtent == _controller.offset) {
        fetchData();
      }
    });
  }

  Future fetchData() async {
    //if it is currently loading, we are not loading again
    if (isLoading) return;
    //if it is not loading we set loading is true
    isLoading = true;

    const limit = 25;
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts?_limit=$limit&_page=$page');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List newItems = json.decode(response.body) as List;
      setState(() {
        page++;
        //when finish loading set loading flag to false
        isLoading = false;

        if (newItems.length < limit) {
          hasMore = false;
        }

        items.addAll(
          newItems.map<String>((item) {
            final number = item['id'];
            return 'Item $number';
          }).toList(),
        );
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future refresh() async {
    setState(() {
      isLoading = false;
      hasMore = true;
      page = 0;
      items.clear();
    });

    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RefreshIndicator(
        onRefresh: refresh,
        child: ListView.builder(
          controller: _controller,
          padding: appScreenDefaultPadding,
          itemCount: items.length + 1,
          itemBuilder: (context, index) {
            if (index < items.length) {
              final item = items[index];
              return ListTile(
                title: Text(item),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: hasMore ? const CircularProgressIndicator.adaptive() : const Text('No more data to load'),
                ),
              );
            }
          },
        ),
      ),
      floatingActionButton: CommonFloatingActionButtonForDisplayCode(
        heroTag: infiniteScrollingListViewTitle,
        screenTitle: infiniteScrollingListViewTitle,
        filePath: infiniteScrollingListViewFilePath,
        model: widget.model,
      ),
    );
  }
}
