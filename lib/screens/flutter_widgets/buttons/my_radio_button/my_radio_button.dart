import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:flutter_a2z/constants/display_code_related_link.dart';
import 'package:flutter_a2z/my_app_style/my_app_style.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/display_code/display_code.dart';

class MyRadioButton extends StatefulWidget {
  final String title;

  const MyRadioButton({Key key, this.title}) : super(key: key);

  @override
  _MyRadioButtonState createState() => _MyRadioButtonState();
}

enum ProgrammingLanguage { Java, JavaScript, Dart, PHP, Python }

class _MyRadioButtonState extends State<MyRadioButton> {
  ProgrammingLanguage _language = ProgrammingLanguage.Java;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListView(
        padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
        children: [
          Text(
            'Flutter Radiobutton With ListTitle',
              style: themeData.textTheme.headline5
          ),
          const SizedBox(height: 20),
          ListTile(
            title: const Text('Java'),
            leading: Radio(
              value: ProgrammingLanguage.Java,
              groupValue: _language,
              onChanged: (ProgrammingLanguage value) {
                setState(() {
                  _language = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('JavaScript'),
            leading: Radio(
              value: ProgrammingLanguage.JavaScript,
              groupValue: _language,
              onChanged: (ProgrammingLanguage value) {
                setState(() {
                  _language = value;
                });
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: COLOR_BLUE,
        heroTag: 'display_code_add_button',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DisplayCode(
                title: FLUTTER_RADIOBUTTON_SCREEN_TITLE,
                filePath: RADIO_BUTTON_FILE_PATH,
                githubLink: RADIO_BUTTON_GIT,
                webLink: RADIO_BUTTON_WEB,
                youTubeLink: RADIO_BUTTON_YOUTUBE,
                docLink: RADIO_BUTTON_DOC,
              ),
            ),
          );
        },
        child: const Icon(Icons.code),
      ),
    );
  }
}
