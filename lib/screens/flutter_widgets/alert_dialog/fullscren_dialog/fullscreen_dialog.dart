import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class MyFullscreenDialog extends StatefulWidget {
  final String title;

  const MyFullscreenDialog({Key key, this.title}) : super(key: key);

  @override
  _MyFullscreenDialogState createState() => _MyFullscreenDialogState();
}

class _MyFullscreenDialogState extends State<MyFullscreenDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => FullScreenDialog(),
                fullscreenDialog: true,
              ),
            );
          },
          child: const Text(FULL_SCREEN_DIALOG_SCREEN_TITLE),
        ),
      ),
    );
  }
}

class FullScreenDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Full-screen Dialog'),
      ),
      body: const Center(
        child: Text('Full-screen dialog'),
      ),
    );
  }
}
//https://material.io/components/dialogs/flutter#full-screen-dialog
