import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

class HorizontalDataTableScreen extends StatefulWidget {
  static const int sortName = 0;
  static const int sortStatus = 1;

  @override
  State<HorizontalDataTableScreen> createState() => _HorizontalDataTableScreenState();
}

class _HorizontalDataTableScreenState extends State<HorizontalDataTableScreen> {
  final HDTRefreshController _hdtRefreshController = HDTRefreshController();

  bool isAscending = true;

  int sortType = HorizontalDataTableScreen.sortName;

  @override
  void initState() {
    user.initData(100);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(horizontalDataTableTitle),
      ),
      body: _getBodyWidget(),
    );
  }

  Widget _getBodyWidget() {
    return HorizontalDataTable(
      leftHandSideColumnWidth: 100,
      rightHandSideColumnWidth: 600,
      isFixedHeader: true,
      headerWidgets: _getTitleWidget(),
      leftSideItemBuilder: _generateFirstColumnRow,
      rightSideItemBuilder: _generateRightHandSideColumnRow,
      itemCount: user.userInfo.length,
      rowSeparatorWidget: const Divider(
        color: Colors.black54,
        height: 1.0,
        thickness: 0.0,
      ),
      verticalScrollbarStyle: const ScrollbarStyle(
        isAlwaysShown: true,
        thickness: 4.0,
        radius: Radius.circular(5.0),
      ),
      horizontalScrollbarStyle: const ScrollbarStyle(
        isAlwaysShown: true,
        thickness: 4.0,
        radius: Radius.circular(5.0),
      ),
      enablePullToRefresh: true,
      refreshIndicator: const WaterDropHeader(),
      refreshIndicatorHeight: 60,
      onRefresh: () async {
        //Do sth
        await Future.delayed(const Duration(milliseconds: 500));
        _hdtRefreshController.refreshCompleted();
      },
      htdRefreshController: _hdtRefreshController,
    );
  }

  List<Widget> _getTitleWidget() {
    return [
      TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: _getTitleItemWidget(
          'Name${sortType == HorizontalDataTableScreen.sortName ? (isAscending ? '↓' : '↑') : ''}',
          100,
        ),
        onPressed: () {
          sortType = HorizontalDataTableScreen.sortName;
          isAscending = !isAscending;
          user.sortName(isAscending: isAscending);
          setState(() {});
        },
      ),
      TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: _getTitleItemWidget(
          'Status${sortType == HorizontalDataTableScreen.sortStatus ? (isAscending ? '↓' : '↑') : ''}',
          100,
        ),
        onPressed: () {
          sortType = HorizontalDataTableScreen.sortStatus;
          isAscending = !isAscending;
          user.sortStatus(isAscending: isAscending);
          setState(() {});
        },
      ),
      _getTitleItemWidget('Phone', 200),
      _getTitleItemWidget('Register', 100),
      _getTitleItemWidget('Termination', 200),
    ];
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Container(
      width: width,
      height: 56,
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
      child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      width: 100,
      height: 52,
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
      child: Text(user.userInfo[index].name),
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: Row(
            children: <Widget>[
              Icon(
                user.userInfo[index].status ? Icons.notifications_off : Icons.notifications_active,
                color: user.userInfo[index].status ? Colors.red : Colors.green,
              ),
              Text(user.userInfo[index].status ? 'Disabled' : 'Active')
            ],
          ),
        ),
        Container(
          width: 200,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: Text(user.userInfo[index].phone),
        ),
        Container(
          width: 100,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: Text(user.userInfo[index].registerDate),
        ),
        Container(
          width: 200,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: Text(user.userInfo[index].terminationDate),
        ),
      ],
    );
  }
}

User user = User();

class User {
  List<UserInfo> userInfo = [];

  void initData(int size) {
    for (int i = 0; i < size; i++) {
      userInfo.add(UserInfo('User_$i', i % 3 == 0, '+001 9999 9999', '2019-01-01', 'N/A'));
    }
  }

  ///
  /// Single sort, sort Name's id
  void sortName({required bool isAscending}) {
    userInfo.sort((a, b) {
      final int aId = int.tryParse(a.name.replaceFirst('User_', '')) ?? 0;
      final int bId = int.tryParse(b.name.replaceFirst('User_', '')) ?? 0;
      return (aId - bId) * (isAscending ? 1 : -1);
    });
  }

  ///
  /// sort with Status and Name as the 2nd Sort
  void sortStatus({required bool isAscending}) {
    userInfo.sort((a, b) {
      if (a.status == b.status) {
        final int aId = int.tryParse(a.name.replaceFirst('User_', '')) ?? 0;
        final int bId = int.tryParse(b.name.replaceFirst('User_', '')) ?? 0;
        return aId - bId;
      } else if (a.status) {
        return isAscending ? 1 : -1;
      } else {
        return isAscending ? -1 : 1;
      }
    });
  }
}

class UserInfo {
  String name;
  bool status;
  String phone;
  String registerDate;
  String terminationDate;

  UserInfo(this.name, this.status, this.phone, this.registerDate, this.terminationDate);
}
