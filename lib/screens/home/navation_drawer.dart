import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_a2z/screens/common_widgets/common_widgets.dart';

Widget myDrawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text("Md. Ruhul Amin"),
          accountEmail: Text("ruhulmath08@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage("https://avatars3.githubusercontent.com/u/19272924?s=460&u=bff8f9b0562582e2503af1fe87323e7b8bbee33d&v=4"),
          ),
          otherAccountsPictures: <Widget>[
            CircleAvatar(
              child: InkWell(
                child: Icon(Icons.edit),
                onTap: () {
                  CommonWidgets.showToast(context, "edit profile");
                  Navigator.of(context).pop();
                },
              ),
            )
          ],
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -4), //reduce padding
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
          title: Text("Flutter Basic"),
          onTap: () {
            CommonWidgets.showToast(context, "Flutter Basic");
          },
        ),
        Divider(color: Colors.blue, thickness: 1),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -4), //reduce padding
          trailing: Icon(Icons.info_outlined, color: Colors.black),
          title: Text("Flutter Intermediate"),
          onTap: () {
            CommonWidgets.showToast(context, "Flutter Basic");
          },
        ),
        Divider(color: Colors.blue, thickness: 1),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -4), //reduce padding
          trailing: Icon(Icons.text_rotation_none, color: Colors.black),
          title: Text("Flutter Advanced"),
          onTap: () {
            CommonWidgets.showToast(context, "Flutter Advanced");
          },
        ),
        Divider(color: Colors.blue, thickness: 1),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -4), //reduce padding
          trailing: Icon(Icons.local_fire_department, color: Colors.black),
          title: Text("Flutter And Firebase"),
          onTap: () {
            CommonWidgets.showToast(context, "Flutter Advanced");
          },
        ),
        Divider(color: Colors.blue, thickness: 1),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -4), //reduce padding
          trailing: Icon(Icons.location_pin, color: Colors.black),
          title: Text("Flutter With Map"),
          onTap: () {
            CommonWidgets.showToast(context, "Flutter Advanced");
          },
        ),
        Divider(color: Colors.blue, thickness: 1),
        Expanded(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Divider(color: Colors.blue, thickness: 1),
                ListTile(
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4), //reduce padding
                  trailing: Icon(Icons.touch_app_sharp, color: Colors.black),
                  title: Text("Setting"),
                  onTap: () {
                    CommonWidgets.showToast(context, "Setting");
                  },
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
