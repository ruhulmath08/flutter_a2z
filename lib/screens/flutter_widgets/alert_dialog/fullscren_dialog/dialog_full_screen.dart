import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_a2z/screens/flutter_widgets/alert_dialog/fullscren_dialog/test_data_model.dart';
import 'package:flutter_a2z/utility/utility.dart';
import 'package:toast/toast.dart';

class DialogFullScreen extends StatefulWidget {
  final TestDataModel testDataModel;
  final VoidCallback voidCallback;

  const DialogFullScreen({
    Key key,
    this.testDataModel,
    this.voidCallback,
  }) : super(key: key);

  @override
  _DialogFullScreenState createState() => _DialogFullScreenState();
}

class _DialogFullScreenState extends State<DialogFullScreen> {
  bool showRemarkFieldForReject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
            '${widget.testDataModel.category ?? widget.testDataModel.category} / ${widget.testDataModel.subCategory ?? widget.testDataModel.subCategory}'),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.only(top: 10, right: 5, bottom: 10, left: 5),
          children: [
            Card(
              elevation: 2,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
                side: BorderSide(color: Colors.blue, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        Utility.isEmptyString(widget.testDataModel.image) ? 'assets/images/no_image.png' : widget.testDataModel.image,
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height / 3,
                        width: double.infinity,
                      ),
                    ),
                    const SizedBox(height: 15),
                    createShoutDetailsDataRow(title: 'Date & Time:', correspondingValue: widget.testDataModel.dateTime),
                    createShoutDetailsDataRow(title: 'Coordinates:', correspondingValue: '23.234534, 90.567856'),
                    createShoutDetailsDataRow(title: 'Probable Addr:', correspondingValue: widget.testDataModel.areaName),
                    createShoutDetailsDataRow(title: 'Submitted By:', correspondingValue: 'Md. xyz'),
                    createShoutDetailsDataRow(title: 'Urgency:', correspondingValue: 'ASAP'),
                    createShoutDetailsDataRow(title: 'Remarks:', correspondingValue: '....................'),
                    //createShoutDetailsDataRow(title: 'Unit:', correspondingValue: widget.validateShoutModel.unit),
                  ],
                ),
              ),
            ),
            //SizedBox(height: 10),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: const BorderSide(color: Colors.blue, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text(
                      'Assigned Person',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      child: Divider(thickness: 1, color: Colors.blue),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              createShoutDetailsDataRow(title: 'Officer:', correspondingValue: widget.testDataModel.assignPersonName),
                              createShoutDetailsDataRow(title: 'Agency:', correspondingValue: widget.testDataModel.areaName),
                              createShoutDetailsDataRow(title: 'Unit:', correspondingValue: widget.testDataModel.unit),
                              createShoutDetailsDataRow(title: 'Phone:', correspondingValue: widget.testDataModel.assignPersonPhoneNo),
                              createShoutDetailsDataRow(title: 'Email:', correspondingValue: widget.testDataModel.assignPersonEmail),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: Container(
                            decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.blue)),
                            child: CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset(
                                  Utility.isEmptyString(widget.testDataModel.assignPersonImage)
                                      ? 'assets/images/profile_avatar.png'
                                      : widget.testDataModel.assignPersonImage,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Card(
        margin: EdgeInsets.zero,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  onPressed: widget.voidCallback,
                  child: const Text(
                    'Accept',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: widget.voidCallback,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
                  ),
                  child: const Text(
                    'Transfer',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: widget.voidCallback,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
                  ),
                  child: const Text(
                    'Reject',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget createShoutDetailsDataRow({
  String title,
  String correspondingValue,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            title,
            //style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          flex: 4,
          child: Text(
            Utility.isEmptyString(correspondingValue) ? '' : correspondingValue,
            //style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    ),
  );
}
