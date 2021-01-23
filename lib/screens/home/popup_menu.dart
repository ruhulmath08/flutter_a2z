import 'package:flutter/material.dart';

const List<MyPopupMenu> myPopupMenu = <MyPopupMenu>[
  MyPopupMenu('Rate App', icon: Icon(Icons.star)),
  MyPopupMenu('Contact', icon: Icon(Icons.contact_mail)),
  MyPopupMenu('Logout', icon: Icon(Icons.logout)),
];

class MyPopupMenu {
  final String title;
  final Icon icon;

  const MyPopupMenu(this.title, {this.icon});
}

//handle _selectedMenu click -> popup menu
void selectedPopUpMenu(MyPopupMenu popupMenu) {
  switch (popupMenu.title) {
    case 'Rate App':
      break;

    case 'Contact':
      break;

    case 'Logout':
      break;
  }
}
