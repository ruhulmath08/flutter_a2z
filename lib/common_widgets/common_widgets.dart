import 'package:flutter/material.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:flutter_a2z/utility/utility.dart';
import 'package:toast/toast.dart';

class CommonWidgets {
  static Future browsLinkDialog({
    BuildContext buildContext,
    Icon icon,
    String title,
    String description,
    String url,
    String yesButton,
    String noButton,
  }) {
    return showDialog<void>(
      context: buildContext,
      builder: (BuildContext dialogContext) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constants.DIALOG_PADDING),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: Constants.DIALOG_PADDING,
                  top: Constants.DIALOG_AVATAR_RADIUS + Constants.DIALOG_PADDING,
                  right: Constants.DIALOG_PADDING,
                  bottom: Constants.DIALOG_PADDING,
                ),
                margin: EdgeInsets.only(top: Constants.DIALOG_AVATAR_RADIUS),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Constants.DIALOG_PADDING),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 10),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      description,
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                          color: Colors.red,
                          onPressed: () {
                            Navigator.of(buildContext).pop();
                          },
                          child: Text(
                            noButton,
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 20),
                        FlatButton(
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.of(buildContext).pop();
                            Utility.launchURL(buildContext, url);
                          },
                          child: Text(
                            yesButton,
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: Constants.DIALOG_PADDING,
                right: Constants.DIALOG_PADDING,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: Constants.DIALOG_AVATAR_RADIUS,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(Constants.DIALOG_PADDING),
                    ),
                    child: icon,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static showToast(BuildContext context, String message) {
    Toast.show(
      "Pressed on: $message",
      context,
      gravity: Toast.CENTER,
      backgroundColor: Colors.grey,
      textColor: Colors.white,
      duration: Toast.LENGTH_LONG,
    );
  }
}
