import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';

class MyFlutterReactionButton extends StatefulWidget {
  final String title;

  const MyFlutterReactionButton({Key key, this.title}) : super(key: key);

  @override
  _MyFlutterReactionButtonState createState() => _MyFlutterReactionButtonState();
}

class _MyFlutterReactionButtonState extends State<MyFlutterReactionButton> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        children: [
          FlutterReactionButtonCheck(
            onReactionChanged: (reaction, index, isChecked) {
              print('reaction selected index: $index');
            },
            reactions: <Reaction>[
              Reaction(
                title: const Text('Add'),
                previewIcon: const Icon(Icons.library_add_sharp),
                icon: const Icon(Icons.library_add_sharp),
              ),
              Reaction(
                previewIcon: const Icon(Icons.add),
                icon: const Icon(Icons.library_add_sharp),
              ),
              Reaction(
                previewIcon: const Icon(Icons.logout),
                icon: const Icon(Icons.library_add_sharp),
              ),
            ],
            initialReaction: Reaction(
              previewIcon: const Icon(Icons.remove_red_eye_sharp),
              icon: const Icon(Icons.library_add_sharp),
            ),
            selectedReaction: Reaction(
              previewIcon: const Icon(Icons.nat),
              icon: const Icon(Icons.library_add_sharp),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Flutter Reaction Button',
              style: themeData.textTheme.button,
            ),
          ),
        ],
      ),
    );
  }

  buildWidget({IconData icon}) {}
}
