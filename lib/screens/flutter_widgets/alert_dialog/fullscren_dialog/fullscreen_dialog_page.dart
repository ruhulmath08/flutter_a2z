import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/flutter_widgets/alert_dialog/fullscren_dialog/dialog_full_screen.dart';
import 'package:flutter_a2z/screens/flutter_widgets/alert_dialog/fullscren_dialog/test_data_model.dart';
import 'package:flutter_a2z/utility/utility.dart';

class MyFullscreenDialog extends StatefulWidget {
  final String title;

  const MyFullscreenDialog({Key key, this.title}) : super(key: key);

  @override
  _MyFullscreenDialogState createState() => _MyFullscreenDialogState();
}

class _MyFullscreenDialogState extends State<MyFullscreenDialog> {
  List<TestDataModel> shoutList = TestDataModel.fetchAll();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: DataTable(
          columnSpacing: 15,
          showCheckboxColumn: false,
          horizontalMargin: 5,
          dividerThickness: 2,
          showBottomBorder: true,

          columns: const [
            DataColumn(
              label: Text('Category'),
            ),
            DataColumn(
              label: Text('Sub-Category'),
            ),
            DataColumn(
              label: Text('PersonName'),
            ),
            DataColumn(
              label: Text('PersonImage'),
            ),
            DataColumn(
              label: Text('Area Name'),
            ),
            DataColumn(
              label: Text('Unit'),
            ),
            DataColumn(
              label: Text('DateTime'),
            ),
          ],
          rows: shoutList
              .map(
                (model) => DataRow(
              cells: <DataCell>[
                DataCell(
                  Text(
                    Utility.isEmptyString(model.category) ? '' : model.category,
                  ),
                ),
                DataCell(
                  Text(
                    Utility.isEmptyString(model.subCategory) ? '' : model.subCategory,
                  ),
                ),
                DataCell(
                  Text(
                    Utility.isEmptyString(model.assignPersonName) ? '' : model.assignPersonName,
                  ),
                ),
                DataCell(
                  Text(
                    Utility.isEmptyString(model.assignPersonName) ? '' : model.assignPersonName,
                  ),
                ),
                DataCell(
                  Text(
                    Utility.isEmptyString(model.areaName) ? '' : model.areaName,
                  ),
                ),
                DataCell(
                  Text(
                    Utility.isEmptyString(model.unit) ? '' : model.unit,
                  ),
                ),
                DataCell(
                  Text(
                    Utility.isEmptyString(model.dateTime) ? '' : model.dateTime,
                  ),
                ),
              ],
              onSelectChanged: (value) {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => DialogFullScreen(
                      testDataModel: model,
                      voidCallback: (){
                        Navigator.pop(context);
                      },
                    ),
                    fullscreenDialog: true,
                  ),
                );
              },
            ),
          )
              .toList(),
        ),
      ),
    );
  }
}
//https://material.io/components/dialogs/flutter#full-screen-dialog
