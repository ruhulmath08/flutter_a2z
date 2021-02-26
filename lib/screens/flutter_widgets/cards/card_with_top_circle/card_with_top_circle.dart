import 'package:flutter/material.dart';

class CardWithTopCircle extends StatefulWidget {
  final String title;

  const CardWithTopCircle({Key key, this.title}) : super(key: key);

  @override
  _CardWithTopCircleState createState() => _CardWithTopCircleState();
}

class _CardWithTopCircleState extends State<CardWithTopCircle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        padding: const EdgeInsets.only(top: 20, right: 10, bottom: 10, left: 10),
        crossAxisCount: 2,
        children: [
            Stack(
              children: <Widget>[
                Card(
                  elevation: 5,
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => ReportSubCatScreen(
                      //       title: titleText,
                      //     ),
                      //   ),
                      // );
                    },
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                           Icon(
                            Icons.title,
                            color: Colors.blue,
                            size: 50,
                          ),
                           Padding(
                            padding: EdgeInsets.only(
                                left: 10, top: 20, right: 10),
                            child: Text(
                              'Card-1',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const FractionalTranslation(
                  translation: Offset(0.0, -0.4),
                  child: Align(
                    alignment: FractionalOffset(0.5, 0.4),
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 22.0,
                      child: Text(
                        '22',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Card(
          child: Container(
            height: 100.0,
          ),
        ),
        const FractionalTranslation(
          translation: Offset(0.0, -0.4),
          child: Align(
            alignment: FractionalOffset(0.5, 0.0),
            child: CircleAvatar(
              radius: 25.0,
              child: Text('A'),
            ),
          ),
        ),
      ],
    );
  }
}
