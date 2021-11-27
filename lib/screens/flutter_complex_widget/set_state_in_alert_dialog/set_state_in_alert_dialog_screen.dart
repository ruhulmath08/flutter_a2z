import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_floating_action_button_for_display_code.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetStateInAlertDialogScreen extends StatefulWidget {
  final String title;
  final Object model;

  const SetStateInAlertDialogScreen({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);

  @override
  _SetStateInAlertDialogScreenState createState() => _SetStateInAlertDialogScreenState();
}

class _SetStateInAlertDialogScreenState extends State<SetStateInAlertDialogScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          shrinkWrap: true,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'CheckBox',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25.sp,
                    ),
                  ),
                ),
                Transform.scale(
                  scale: 2,
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (_) {},
                  ),
                )
              ],
            ),
            SizedBox(height: 10.h),
            ElevatedButton(
              onPressed: () async {
                await openDialog();
                setState(() {});
              },
              child: const Text('Show Dialog'),
            ),
          ],
        ),
      ),
      floatingActionButton: CommonFloatingActionButtonForDisplayCode(
        heroTag: setStateInPopUpAlertDialogRoute,
        screenTitle: setStateInPopUpAlertDialogTitle,
        filePath: setStateInPopUpAlertDialogFilePath,
        model: widget.model,
      ),
    );
  }

  Future openDialog() {
    return showDialog(
      context: context,
      builder: (context) {
        return DialogWidget(
          isChecked: isChecked,
          onChangedCheck: (isChecked) => this.isChecked = isChecked,
        );
      },
    );
  }
}

class DialogWidget extends StatefulWidget {
  final bool isChecked;
  final ValueChanged<bool> onChangedCheck;

  const DialogWidget({
    Key? key,
    required this.isChecked,
    required this.onChangedCheck,
  }) : super(key: key);

  @override
  State<DialogWidget> createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Change SetState In Dialog'),
      content: CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        contentPadding: EdgeInsets.zero,
        title: Text(isChecked ? 'Check' : 'Uncheck'),
        value: isChecked,
        onChanged: (isChecked) => setState(() => this.isChecked = isChecked!),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            widget.onChangedCheck(isChecked);
          },
          child: const Text('Submit'),
        )
      ],
    );
  }
}
