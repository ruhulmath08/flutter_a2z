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
                padding: const EdgeInsets.only(
                  left: Constants.DIALOG_PADDING,
                  top: Constants.DIALOG_AVATAR_RADIUS + Constants.DIALOG_PADDING,
                  right: Constants.DIALOG_PADDING,
                  bottom: Constants.DIALOG_PADDING,
                ),
                margin: const EdgeInsets.only(top: Constants.DIALOG_AVATAR_RADIUS),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Constants.DIALOG_PADDING),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
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
                      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      description,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FlatButton(
                          color: Colors.red,
                          onPressed: () {
                            Navigator.of(buildContext).pop();
                          },
                          child: Text(
                            noButton,
                            style: const TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 20),
                        FlatButton(
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.of(buildContext).pop();
                            Utility.launchURL(buildContext, url);
                          },
                          child: Text(
                            yesButton,
                            style: const TextStyle(fontSize: 18, color: Colors.white),
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
                  backgroundColor: Colors.blue,
                  radius: Constants.DIALOG_AVATAR_RADIUS,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
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

  static void showToast(BuildContext context, String message) {
    Toast.show(
      message,
      context,
      gravity: Toast.CENTER,
      backgroundColor: Colors.grey,
      duration: Toast.LENGTH_LONG,
    );
  }
}
