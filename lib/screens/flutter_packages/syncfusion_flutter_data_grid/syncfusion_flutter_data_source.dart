import 'package:flutter/material.dart';
import 'package:flutter_a2z/screens/flutter_packages/syncfusion_flutter_data_grid/syncfusion_flutter_data_grid_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class SyncfusionFlutterDataSource extends DataGridSource {
  SyncfusionFlutterDataSource({required List<SyncfusionFlutterDataGridModel> syncfusionFlutterDataGridModels}) {
    dataGridRows = syncfusionFlutterDataGridModels
        .map<DataGridRow>(
          (dataGridRow) => DataGridRow(
            cells: [
              DataGridCell<int>(columnName: 'id', value: dataGridRow.id),
              DataGridCell<String>(columnName: 'name', value: dataGridRow.name),
              DataGridCell<String>(columnName: 'fullName', value: dataGridRow.fullName),
              DataGridCell<String>(columnName: 'department', value: dataGridRow.department),
              DataGridCell<String>(columnName: 'designation', value: dataGridRow.designation),
              DataGridCell<String>(columnName: 'address', value: dataGridRow.address),
              DataGridCell<String>(columnName: 'joiningDate', value: dataGridRow.joiningDate),
              DataGridCell<int>(columnName: 'experience', value: dataGridRow.experience),
            ],
          ),
        )
        .toList();
  }

  late List<DataGridRow> dataGridRows;

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((dataGridCell) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          alignment: (dataGridCell.columnName == 'id' || dataGridCell.columnName == 'experience')
              ? Alignment.centerRight
              : Alignment.centerLeft,
          child: Text(dataGridCell.value.toString()),
        );
      }).toList(),
    );
  }
}
