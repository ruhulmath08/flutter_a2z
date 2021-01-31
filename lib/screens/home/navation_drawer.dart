import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';
import 'package:flutter_a2z/my_app_style/my_app_style.dart';

Widget myDrawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: [
        UserAccountsDrawerHeader(
          arrowColor: COLOR_BLUE,
          accountName: const Text('Md. Ruhul Amin'),
          accountEmail: const Text('ruhulmath08@gmail.com'),
          currentAccountPicture: const CircleAvatar(
            backgroundImage: NetworkImage('https://avatars3.githubusercontent.com/u/19272924?s=460&u=bff8f9b0562582e2503af1fe87323e7b8bbee33d&v=4'),
          ),
          otherAccountsPictures: <Widget>[
            CircleAvatar(
              child: InkWell(
                onTap: () {
                  CommonWidgets.showToast(context, 'edit profile');
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.edit),
              ),
            )
          ],
        ),
        ListTile(
          visualDensity: const VisualDensity(vertical: -4), //reduce padding
          trailing: const Icon(Icons.arrow_forward_ios),
          title: const Text('Flutter Basic'),
          onTap: () {
            CommonWidgets.showToast(context, 'Flutter Basic');
            Navigator.of(context).pop();
          },
        ),
        const Divider(color: Colors.blue, thickness: 1),
        ListTile(
          visualDensity: const VisualDensity(vertical: -4), //reduce padding
          trailing: const Icon(Icons.widgets),
          title: const Text('Flutter Widgets'),
          onTap: () {
            CommonWidgets.showToast(context, 'Flutter Basic');
            Navigator.of(context).pop();
          },
        ),
        const Divider(color: Colors.blue, thickness: 1),
        ListTile(
          visualDensity: const VisualDensity(vertical: -4), //reduce padding
          trailing: const Icon(Icons.all_inclusive_rounded),
          title: const Text('Flutter Lifecycle Details'),
          onTap: () {
            CommonWidgets.showToast(context, 'Flutter Basic');
            Navigator.of(context).pop();
          },
        ),
        const Divider(color: Colors.blue, thickness: 1),
        ListTile(
          visualDensity: const VisualDensity(vertical: -4), //reduce padding
          trailing: const Icon(Icons.info_outlined),
          title: const Text('Flutter Intermediate'),
          onTap: () {
            CommonWidgets.showToast(context, 'Flutter Basic');
            Navigator.of(context).pop();
          },
        ),
        const Divider(color: Colors.blue, thickness: 1),
        ListTile(
          visualDensity: const VisualDensity(vertical: -4), //reduce padding
          trailing: const Icon(Icons.text_rotation_none),
          title: const Text('Flutter Advanced'),
          onTap: () {
            CommonWidgets.showToast(context, 'Flutter Advanced');
            Navigator.of(context).pop();
          },
        ),
        const Divider(color: Colors.blue, thickness: 1),
        ListTile(
          visualDensity: const VisualDensity(vertical: -4), //reduce padding
          trailing: const Icon(Icons.local_fire_department),
          title: const Text('Flutter And Firebase'),
          onTap: () {
            CommonWidgets.showToast(context, 'Flutter Advanced');
            Navigator.of(context).pop();
          },
        ),
        const Divider(color: Colors.blue, thickness: 1),
        ListTile(
          visualDensity: const VisualDensity(vertical: -4), //reduce padding
          trailing: const Icon(Icons.location_pin),
          title: const Text('Flutter With Map'),
          onTap: () {
            CommonWidgets.showToast(context, 'Flutter Advanced');
            Navigator.of(context).pop();
          },
        ),
        const Divider(color: Colors.blue, thickness: 1),
        Expanded(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Divider(color: Colors.blue, thickness: 1),
                ListTile(
                  visualDensity: const VisualDensity(vertical: -4), //reduce padding
                  trailing: const Icon(Icons.settings),
                  title: const Text('Setting'),
                  onTap: () {
                    CommonWidgets.showToast(context, 'Setting');
                    Navigator.of(context).pop();
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
