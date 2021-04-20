// import 'package:flutter/material.dart';
//
// class ApiResponse<T> {
//   Status status;
//   static BuildContext loadingContext;
//   static bool isLoading = true;
//
//   T data;
//   List<dynamic> errors;
//   String message;
//
//   ApiResponse.loading(this.message) : status = Status.LOADING;
//
//   ApiResponse.complete(this.message) : status = Status.COMPLETE;
//
//   ApiResponse.error(this.message) : status = Status.ERROR;
//
//   @override
//   String toString() {
//     return "Status: $status \n Message : $message, \n Data: $data";
//   }
//
//   //show loading progress dialog
//   static Future<void> onLoading(_context) {
//     return showDialog(
//       context: _context,
//       barrierDismissible: false,
//       builder: (BuildContext context) {
//         loadingContext = context;
//         return Center(
//           child: Container(
//             width: 30,
//             height: 30,
//             child: CircularProgressIndicator(),
//           ),
//         );
//       },
//     );
//   }
//
//   static Future<void> removeLoading({BuildContext context}) {
//     if (loadingContext != null) {
//       Navigator.of(context).pop();
//     } else {
//       Navigator.of(context).pop();
//     }
//   }
//
//   static Future<void> showMyDialog({context, data, path, repPath}) async {
//     if(loadingContext!=null) Navigator.of(loadingContext).pop();
//     return showDialog<void>(
//       context: context,
//       barrierDismissible: false, // user must tap button!
//       builder: (BuildContext context) {
//         return AlertDialog(
//           content: Container(
//             child: Text(data.message, style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//           ),
//           actions: <Widget>[
//             FlatButton(
//               child: Text('Ok', style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//               onPressed: () {
//                 if(path != null){
//                   Navigator.pushNamed(context, path);
//                 }else if(repPath != null){
//                   Navigator.pushReplacementNamed(context, repPath, arguments: {
//                   });
//                 }else{
//                   Navigator.of(context).pop();
//                 }
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   static Future<void> showErrorDialog(context, data) async {
//     return showDialog<void>(
//       context: context,
//       barrierDismissible: false, // user must tap button!
//       builder: (BuildContext context) {
//         return AlertDialog(
//           titlePadding: EdgeInsets.only(left: 25, top: 10),
//           title: Text('List of errors', textAlign: TextAlign.left,),
//           content: Container(
//             // width: MediaQuery.of(context).size.width * 0.9,
//             // height: MediaQuery.of(context).size.height * (data.errors.length/10),
//             child: Text(data.toString())
//           ),
//           actions: <Widget>[
//             FlatButton(
//               child: Text('Close'),
//               onPressed: () {
//                 Navigator.of(context).pop(context);
//                 Navigator.of(loadingContext).pop();
//               },
//             ),
//           ],
//         );
//
//       },
//     );
//   }
// }
//
// enum Status { LOADING, COMPLETE, ERROR }
//
// Widget buildRow(BuildContext context, title, itemNo) {
//   return Text(""+itemNo.toString()+". "+title,
//     style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),);
// }
//
// Widget buildRow2(BuildContext context, title, itemNo) {
//   return ListTile(
//     contentPadding: EdgeInsets.all(0.0),
//     title: Row(
//       mainAxisSize: MainAxisSize.min,
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Icon(Icons.circle, color: Colors.red[300], size: 14,),
//         SizedBox(width: 10),
//         Flexible(child: Text(title, style: TextStyle(color: Colors.red, fontSize: 15),)),
//       ],
//     ),
//   );
// }
