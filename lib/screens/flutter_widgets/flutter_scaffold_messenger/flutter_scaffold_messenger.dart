import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:flutter_a2z/screens/flutter_widgets/flutter_scaffold_messenger/other_page.dart';
import 'package:flutter_a2z/screens/flutter_widgets/flutter_scaffold_messenger/show_snackbar_executed_page_only.dart';

class FlutterScaffoldMessenger extends StatefulWidget {
  final String title;

  const FlutterScaffoldMessenger({Key key, this.title}) : super(key: key);

  @override
  _FlutterScaffoldMessengerState createState() => _FlutterScaffoldMessengerState();
}

class _FlutterScaffoldMessengerState extends State<FlutterScaffoldMessenger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        children: [
          ElevatedButton(
            onPressed: () {
              const text = 'This is a simple SnackBar';
              const snackBar = SnackBar(content: Text(text));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text('Simple SnackBar'),
          ),
          ElevatedButton(
            onPressed: () {
              const text = 'This is an Action SnackBar';
              final snackBar = SnackBar(
                duration: const Duration(seconds: 300),
                content: const Text(text),
                action: SnackBarAction(
                  label: 'Dismiss',
                  onPressed: () {},
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text('Action SnackBar'),
          ),
          ElevatedButton(
            onPressed: () async {
              const text = 'This is an Action Async SnackBar. This is how multiple SnackBar works together';
              const snackBar = SnackBar(content: Text(text));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text('Async SnackBar'),
          ),
          ElevatedButton(
            onPressed: () {
              const text = 'This SnackBar Remove others SnackBar and display message';
              const snackBar = SnackBar(content: Text(text));
              ScaffoldMessenger.of(context)
                ..removeCurrentSnackBar()
                ..showSnackBar(snackBar);
            },
            child: const Text('Remove SnackBar'),
          ),
          ElevatedButton(
            onPressed: () {
              const text = 'This SnackBar Remove others SnackBar with an exit animation and display message';
              const snackBar = SnackBar(content: Text(text));
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);
            },
            child: const Text('Hide SnackBar'),
          ),
          ElevatedButton(
            onPressed: () async {
              const text = 'This SnackBar Persist in multiple pages';
              const snackBar = SnackBar(content: Text(text));
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);

              await Future.delayed(const Duration(seconds: 2));
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OtherScreen(title: 'OtherScreen')));
            },
            child: const Text('Persist SnackBar in Multiple Page'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OtherScreen(title: 'OtherScreen')));

              const text = 'This SnackBar Persist in multiple pages';
              const snackBar = SnackBar(content: Text(text));
              //await Future.delayed(const Duration(seconds: 2));
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);
            },
            child: const Text('Navigate Page Then Show SnackBar'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ShowSnackBarExecutedPageOnly(title: 'SnackBar On ExecutedPage'),
                ),
              );
            },
            child: const Text('Show SnackBar Executed Page Only'),
          ),
        ],
      ),
    );
  }
}
