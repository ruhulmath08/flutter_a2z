import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/display_code_related_link.dart';
import 'package:flutter_a2z/my_app_style/my_app_style.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/display_code/display_code.dart';

class MyToggleButton extends StatefulWidget {
  final String title;

  const MyToggleButton({Key key, this.title}) : super(key: key);

  @override
  _MyToggleButtonState createState() => _MyToggleButtonState();
}

class _MyToggleButtonState extends State<MyToggleButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          const Text(
            'Single+Required ToggleButton',
              style: buttonTitleStyle
          ),
          const SizedBox(height: 20),
          singleAndRequiredToggleButton(context),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              thickness: 1,
              color: Colors.black,
            ),
          ),
          const Text(
            'Single+NotRequired ToggleButton',
              style: buttonTitleStyle
          ),
          const SizedBox(height: 20),
          singleAndNotRequiredToggleButton(context),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              thickness: 1,
              color: Colors.black,
            ),
          ),
          const Text(
            'Multiple+Required ToggleButton',
              style: buttonTitleStyle
          ),
          const SizedBox(height: 20),
          multipleAndRequiredToggleButton(context),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              thickness: 1,
              color: Colors.black,
            ),
          ),
          const Text(
            'Multiple+NotRequired ToggleButton',
              style: buttonTitleStyle
          ),
          const SizedBox(height: 20),
          multipleAndNotRequiredToggleButton(context),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DisplayCode(
                title: FLUTTER_TOGGLE_BUTTON__SCREEN_TITLE,
                filePath: TOGGLE_BUTTON_FILE_PATH,
                githubLink: TOGGLE_BUTTON_GIT,
                webLink: TOGGLE_BUTTON_WEB,
                youTubeLink: TOGGLE_BUTTON_YOUTUBE,
                docLink: TOGGLE_BUTTON_DOC,
              ),
            ),
          );
        },
        heroTag: 'display_code_toggle_button',
        child: const Icon(Icons.code),
      ),
    );
  }

  /*------------------Single+Required ToggleButton : Start------------------*/
  final List<bool> _isSelectedSingleAndRequired = [true, false, false];

  Widget singleAndRequiredToggleButton(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green.withOpacity(0.5),
        child: ToggleButtons(
          isSelected: _isSelectedSingleAndRequired,
          selectedColor: Colors.white,
          color: Colors.black,
          fillColor: Colors.lightBlue.shade900,
          splashColor: Colors.red.withOpacity(0.5),
          onPressed: (int newIndex) {
            setState(() {
              for (int index = 0; index < _isSelectedSingleAndRequired.length; index++) {
                if (index == newIndex) {
                  _isSelectedSingleAndRequired[index] = true;
                } else {
                  _isSelectedSingleAndRequired[index] = false;
                }
              }
            });
          },
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget> [
             const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              // ignore: prefer_const_literals_to_create_immutables
              child: Text(
                'Flutter',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text(
                'Kotlin',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text(
                // ignore: prefer_const_literals_to_create_immutables, prefer_const_literals_to_create_immutables
                'Java',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /*------------------Single+Required ToggleButton : End------------------*/

  /*------------------Single+NotRequired ToggleButton : Start------------------*/
  final List<bool> _isSelectedSingleAndNotRequired = [false, false, false];

  Widget singleAndNotRequiredToggleButton(BuildContext context) {
    return Center(
      child: ToggleButtons(
        isSelected: _isSelectedSingleAndNotRequired,
        selectedColor: Colors.white,
        color: Colors.black,
        fillColor: Colors.lightBlue.shade900,
        onPressed: (int newIndex) {
          setState(() {
            for (int index = 0; index < _isSelectedSingleAndNotRequired.length; index++) {
              if (index == newIndex) {
                _isSelectedSingleAndNotRequired[index] = !_isSelectedSingleAndNotRequired[index];
              } else {
                _isSelectedSingleAndNotRequired[index] = false;
              }
            }
          });
        },
        children: const [
          Icon(Icons.camera_alt),
          Icon(Icons.phone_iphone),
          Icon(Icons.laptop),
        ],
      ),
    );
  }

  /*------------------Single+NotRequired ToggleButton : End------------------*/

  /*------------------Multiple+Required ToggleButton : Start------------------*/
  final List<bool> _isSelectedMultipleAndRequired = [true, false, false, false, false, false];

  Widget multipleAndRequiredToggleButton(BuildContext context) {
    return Center(
      child: ToggleButtons(
        isSelected: _isSelectedMultipleAndRequired,
        selectedColor: Colors.white,
        color: Colors.black,
        fillColor: Colors.lightBlue.shade900,
        borderWidth: 3.0,
        borderColor: Colors.lightBlue.shade900,
        selectedBorderColor: Colors.blue,
        borderRadius: BorderRadius.circular(5.0),
        onPressed: (int newIndex) {
          final isOneSelected = _isSelectedMultipleAndRequired.where((element) => element).length == 1;
          if (isOneSelected && _isSelectedMultipleAndRequired[newIndex]) return;
          setState(() {
            for (int index = 0; index < _isSelectedMultipleAndRequired.length; index++) {
              if (index == newIndex) {
                _isSelectedMultipleAndRequired[index] = !_isSelectedMultipleAndRequired[index];
              }
            }
          });
        },
        children: const [
          Icon(Icons.airplanemode_active),
          Icon(Icons.directions_bus_sharp),
          Icon(Icons.bike_scooter),
          Icon(Icons.motorcycle_sharp),
          Icon(Icons.directions_boat),
          Icon(Icons.local_shipping),
        ],
      ),
    );
  }

  /*------------------Multiple+Required ToggleButton : End------------------*/

  /*------------------Multiple+NotRequired ToggleButton : Start------------------*/
  final List<bool> _isSelectedMultipleAndNotRequired = [false, false, false, false];

  Widget multipleAndNotRequiredToggleButton(BuildContext context) {
    return Center(
      child: ToggleButtons(
        isSelected: _isSelectedMultipleAndNotRequired,
        selectedColor: Colors.white,
        borderWidth: 2.0,
        borderColor: Colors.lightBlue,
        selectedBorderColor: Colors.red.shade400,
        color: Colors.black,
        fillColor: Colors.lightBlue.shade900,
        onPressed: (int index) {
          setState(
            () {
              _isSelectedMultipleAndNotRequired[index] = !_isSelectedMultipleAndNotRequired[index];
            },
          );
        },
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text('Java', style: TextStyle(fontSize: 18)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text('Dart', style: TextStyle(fontSize: 18)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text('Kotlin', style: TextStyle(fontSize: 18)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text('PHP', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
  /*------------------Multiple+NotRequired ToggleButton : End------------------*/
}
