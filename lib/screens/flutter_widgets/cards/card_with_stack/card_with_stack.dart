import 'package:flutter/material.dart';

class CardWithStack extends StatefulWidget {
  final String title;

  const CardWithStack({Key key, this.title}) : super(key: key);

  @override
  _CardWithStackState createState() => _CardWithStackState();
}

class _CardWithStackState extends State<CardWithStack> {
  static const rotateLeft = AlwaysStoppedAnimation(-45 / 360);
  static const rotateRight = AlwaysStoppedAnimation(45 / 360);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          Stack(
            children: [
              Card(
                margin: const EdgeInsets.all(0.0),
                child: Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: const Center(
                    child: Text(
                      'Card with Stack TopLeft',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -35,
                top: 20,
                child: buildBatch(turns: rotateLeft),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Stack(
            children: [
              Card(
                margin: const EdgeInsets.all(0.0),
                child: Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: const Center(
                    child: Text(
                      'Card with Stack TopRight',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -35,
                top: 20,
                child: buildBatch(turns: rotateRight),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Stack(
            children: [
              Card(
                margin: const EdgeInsets.all(0.0),
                child: Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: const Center(
                    child: Text(
                      'Card with Stack BottomLeft',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -35,
                bottom: 20,
                child: buildBatch(turns: rotateRight),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Stack(
            children: [
              Card(
                elevation: 15,
                margin: const EdgeInsets.all(0.0),
                child: Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: const Center(
                    child: Text(
                      'Card with Stack BottomRight',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -35,
                bottom: 20,
                child: buildBatch(turns: rotateLeft),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: const <Widget>[
              Expanded(
                flex: 75,
                child: Text('100'),
              ),
              Expanded(
                flex: 25,
                child: FlutterLogo(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildBatch({@required Animation<double> turns}) {
    return RotationTransition(
      turns: turns,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
        color: Colors.red,
        child: const Text(
          'Banner',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
