import 'package:flutter/material.dart';
import 'package:flutter_a2z/screens/flutter_widgets/flutter_scaffold_messenger/other_page.dart';

class ShowSnackBarExecutedPageOnly extends StatelessWidget {
  final String title;

  const ShowSnackBarExecutedPageOnly({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () async {
                              const text = 'This SnackBar is show on the Executed page only';
                              const snackBar = SnackBar(content: Text(text));
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);

                              await Future.delayed(const Duration(seconds: 4));

                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const OtherScreen(title: 'OtherScreen'),
                                ),
                              );
                            },
                            child: const Text('Show SnackBar Executed Page Only'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
