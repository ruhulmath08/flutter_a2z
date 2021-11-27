import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_alert_dialog.dart';
import 'package:flutter_a2z/common_widgets/common_floating_action_button_for_display_code.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/flutter_packages/syncfusion_flutter_data_grid/syncfusion_flutter_data_grid_model.dart';
import 'package:flutter_a2z/screens/flutter_packages/syncfusion_flutter_data_grid/syncfusion_flutter_data_source.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class SyncfusionFlutterDataGridScreen extends StatefulWidget {
  final String title;
  final Object model;

  const SyncfusionFlutterDataGridScreen({Key? key, required this.title, required this.model}) : super(key: key);

  @override
  State<SyncfusionFlutterDataGridScreen> createState() => _SyncfusionFlutterDataGridScreenState();
}

class _SyncfusionFlutterDataGridScreenState extends State<SyncfusionFlutterDataGridScreen> {
  late List<SyncfusionFlutterDataGridModel> _getSyncfusionFlutterDataGridModels;
  late SyncfusionFlutterDataSource _syncfusionFlutterDataSource;
  final DataGridController _dataGridController = DataGridController();

  @override
  void initState() {
    _getSyncfusionFlutterDataGridModels = SyncfusionFlutterDataGridModel.fetchAll();
    _syncfusionFlutterDataSource = SyncfusionFlutterDataSource(syncfusionFlutterDataGridModels: _getSyncfusionFlutterDataGridModels);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SfDataGridTheme(
          data: SfDataGridThemeData(
            headerColor: Colors.black26,
          ),
          child: SfDataGrid(
            source: _syncfusionFlutterDataSource,
            columnWidthMode: ColumnWidthMode.auto,
            //selectionMode: SelectionMode.single,
            controller: _dataGridController,
            //navigationMode: GridNavigationMode.cell,
            //allowSorting: true,
            headerRowHeight: 55,
            onCellTap: (DataGridCellTapDetails details) {
              final index = details.rowColumnIndex.rowIndex;

              if (index != 0) {
                final SyncfusionFlutterDataGridModel model = _getSyncfusionFlutterDataGridModels[index - 1];

                commonAlertDialog(
                  context: context,
                  title: 'Display Details Data',
                  description: '',
                  isDisplayListDialog: true,
                  displayListObject: model.toJson(),
                  isCancelButtonRequired: true,
                  cancelButtonPress: () {
                    Navigator.pop(context);
                  },
                );
              }
            },
            columns: [
              GridColumn(
                columnName: 'id',
                label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerRight,
                  child: const Text('ID'),
                ),
              ),
              GridColumn(
                columnName: 'name',
                label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: const Text('Name'),
                ),
              ),
              GridColumn(
                columnName: 'fullName',
                label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: const Text('Full Name'),
                ),
              ),
              GridColumn(
                columnName: 'department',
                label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: const Text('Department'),
                ),
              ),
              GridColumn(
                columnName: 'designation',
                label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: const Text('Designation'),
                ),
              ),
              GridColumn(
                columnName: 'address',
                label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: const Text('Address'),
                ),
              ),
              GridColumn(
                columnName: 'joiningDate',
                label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerRight,
                  child: const Text('Joining Date'),
                ),
              ),
              GridColumn(
                columnName: 'experience',
                label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerRight,
                  child: const Text('Experience'),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: CommonFloatingActionButtonForDisplayCode(
          heroTag: syncfusionFlutterDataGridRoute,
          screenTitle: syncfusionFlutterDataGridTitle,
          filePath: syncfusionFlutterDataGridFilePath,
          model: widget.model,
        ),
      ),
    );
  }
}

//ToDo: Have to implement -> https://www.syncfusion.com/flutter-widgets/flutter-datagrid
