import 'package:flutter/material.dart';

class MyDataTable extends StatefulWidget {
  final String title;

  const MyDataTable({Key key, this.title}) : super(key: key);

  @override
  _MyDataTableState createState() => _MyDataTableState();
}

class _MyDataTableState extends State<MyDataTable> {
  List<FlutterDataTableModel> modelList = FlutterDataTableModel.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0).copyWith(top: 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columnSpacing: 15,
            dividerThickness: 2,
            showCheckboxColumn: false,
            //headingTextStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
            horizontalMargin: 0,
            columns: const [
              DataColumn(
                label: Text(
                  'Name',
                ),
              ),
              DataColumn(
                label: Text('Image'),
              ),
              DataColumn(
                label: Text(
                  'LunchDate',
                ),
              ),
              DataColumn(
                label: Text('Engine'),
              ),
              DataColumn(
                label: Text('MaxPower'),
              ),
              DataColumn(
                label: Text('MaxTorque'),
              ),
              DataColumn(
                label: Text('TopSpeed'),
              ),
              DataColumn(
                label: Text('FuelCapacity'),
              ),
            ],
            rows: modelList
                .map(
                  (model) => DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Text(model.name),
                      ),
                      DataCell(
                        Image.asset(
                          model.image,
                          fit: BoxFit.fill,
                          width: 80,
                          height: 80,
                        ),
                      ),
                      DataCell(
                        Text(model.lunchDate),
                      ),
                      DataCell(
                        Text(model.engine),
                      ),
                      DataCell(
                        Text(model.maxPower),
                      ),
                      DataCell(
                        Text(model.maxTorque),
                      ),
                      DataCell(
                        Text(model.topSpeed),
                      ),
                      DataCell(
                        Text(model.fuelCapacity),
                      ),
                    ],
                    // onSelectChanged: (value) {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute<void>(
                    //       builder: (BuildContext context) => FullScreenDialog(
                    //         validateShoutModel: shout,
                    //       ),
                    //       fullscreenDialog: true,
                    //     ),
                    //   );
                    // },
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

class FlutterDataTableModel {
  String name;
  String image;
  String lunchDate;
  String engine;
  String maxPower;
  String maxTorque;
  String topSpeed;
  String fuelCapacity;

  FlutterDataTableModel({
    this.name,
    this.image,
    this.lunchDate,
    this.engine,
    this.maxPower,
    this.maxTorque,
    this.topSpeed,
    this.fuelCapacity,
  });

  static List<FlutterDataTableModel> fetchAll() {
    return [
      FlutterDataTableModel(
        name: 'The TVS Apache RR 310',
        image: 'assets/images/apache_rr310.png',
        lunchDate: '2017',
        engine: '312.2cc',
        maxPower: '25 kW @9700 rmp',
        maxTorque: '27.3 Nm@ 7700 rpm',
        topSpeed: '160 km/h',
        fuelCapacity: '11 L',
      ),
      FlutterDataTableModel(
        name: 'TVS Apache RTR 160 4V',
        image: 'assets/images/apache_rtr_160_4V.png',
        lunchDate: '2018',
        engine: '159.7 cc',
        maxPower: '16.02 PS @ 8250 rpm',
        maxTorque: '14.12 Nm @ 7250 rpm',
        topSpeed: '114km/h',
        fuelCapacity: '12 L',
      ),
    ];
  }
}

//ToDo: show all completed (flutter a2z) item in here