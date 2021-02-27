import 'package:flutter/material.dart';

class TableWithPagination extends StatefulWidget {
  final String title;

  const TableWithPagination({Key key, this.title}) : super(key: key);

  @override
  _TableWithPaginationState createState() => _TableWithPaginationState();
}

class _TableWithPaginationState extends State<TableWithPagination> {
  DTS dts = DTS();
  int _rowPerPage = PaginatedDataTable.defaultRowsPerPage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: PaginatedDataTable(
          header: const Text('Data Table Header'),
          columnSpacing: 15,
          horizontalMargin: 0,
          columns: const [
            DataColumn(label: Text('Col-1')),
            DataColumn(label: Text('Col-2')),
            DataColumn(label: Text('Col-3')),
            DataColumn(label: Text('Col-4')),
            DataColumn(label: Text('Col-5')),
            DataColumn(label: Text('Col-6')),
            DataColumn(label: Text('Col-7')),
            DataColumn(label: Text('Col-8')),
            DataColumn(label: Text('Col-9')),
            DataColumn(label: Text('Col-10')),
          ],
          source: dts,
          onRowsPerPageChanged: (r){
            setState(() {
              _rowPerPage = r;
            });
          },
        ),
      ),
    );
  }
}

class DTS extends DataTableSource{
  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text((index+1).toString())),
      DataCell(Text((index+1).toString())),
      DataCell(Text((index+1).toString())),
      DataCell(Text((index+1).toString())),
      DataCell(Text((index+1).toString())),
      DataCell(Text((index+1).toString())),
      DataCell(Text((index+1).toString())),
      DataCell(Text((index+1).toString())),
      DataCell(Text((index+1).toString())),
      DataCell(Text((index+1).toString())),
    ]);
  }

  @override
  bool get isRowCountApproximate => true;

  @override
  int get rowCount => 100;

  @override
  int get selectedRowCount => 0;
}