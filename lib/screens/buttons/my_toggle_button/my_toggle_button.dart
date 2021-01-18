import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/display_code_related_link.dart';
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
            "Single+Required ToggleButton",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          singleAndRequiredToggleButton(context),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              thickness: 1,
              color: Colors.black,
            ),
          ),
          const Text(
            "Single+NotRequired ToggleButton",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          singleAndNotRequiredToggleButton(context),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              thickness: 1,
              color: Colors.black,
            ),
          ),
          const Text(
            "Multiple+Required ToggleButton",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          multipleAndRequiredToggleButton(context),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              thickness: 1,
              color: Colors.black,
            ),
          ),
          const Text(
            "Multiple+NotRequired ToggleButton",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          multipleAndNotRequiredToggleButton(context),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DisplayCode(
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
        heroTag: "display_code",
        child: const Icon(Icons.code),
      ),
    );
  }

  /*------------------Single+Required ToggleButton : Start------------------*/
  List<bool> _isSelectedSingleAndRequired = [true, false, false];

  Widget singleAndRequiredToggleButton(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green.withOpacity(0.5),
        child: ToggleButtons(
          isSelected: _isSelectedSingleAndRequired,
          selectedColor: Colors.white,
          color: Colors.black,
          fillColor: Colors.lightBlue.shade900,
          renderBorder: true,
          splashColor: Colors.red.withOpacity(0.5),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: const Text(
                "Flutter",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: const Text(
                "Kotlin",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: const Text(
                "Java",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
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
        ),
      ),
    );
  }

  /*------------------Single+Required ToggleButton : End------------------*/

  /*------------------Single+NotRequired ToggleButton : Start------------------*/
  List<bool> _isSelectedSingleAndNotRequired = [false, false, false];

  Widget singleAndNotRequiredToggleButton(BuildContext context) {
    return Center(
      child: ToggleButtons(
        isSelected: _isSelectedSingleAndNotRequired,
        selectedColor: Colors.white,
        color: Colors.black,
        fillColor: Colors.lightBlue.shade900,
        children: [
          const Icon(Icons.camera_alt),
          const Icon(Icons.phone_iphone),
          const Icon(Icons.laptop),
        ],
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
      ),
    );
  }

  /*------------------Single+NotRequired ToggleButton : End------------------*/

  /*------------------Multiple+Required ToggleButton : Start------------------*/
  List<bool> _isSelectedMultipleAndRequired = [true, false, false, false, false, false];

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
        children: [
          const Icon(Icons.airplanemode_active),
          const Icon(Icons.directions_bus_sharp),
          const Icon(Icons.bike_scooter),
          const Icon(Icons.motorcycle_sharp),
          const Icon(Icons.directions_boat),
          const Icon(Icons.local_shipping),
        ],
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
      ),
    );
  }

  /*------------------Multiple+Required ToggleButton : End------------------*/

  /*------------------Multiple+NotRequired ToggleButton : Start------------------*/
  List<bool> _isSelectedMultipleAndNotRequired = [false, false, false, false];

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
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: const Text("Java", style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: const Text("Dart", style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: const Text("Kotlin", style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: const Text("PHP", style: TextStyle(fontSize: 18)),
          ),
        ],
        onPressed: (int index) {
          setState(
            () {
              _isSelectedMultipleAndNotRequired[index] = !_isSelectedMultipleAndNotRequired[index];
            },
          );
        },
      ),
    );
  }
  /*------------------Multiple+NotRequired ToggleButton : End------------------*/
}
