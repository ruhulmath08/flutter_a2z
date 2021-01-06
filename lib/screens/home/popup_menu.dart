import 'package:flutter/material.dart';

const List<MyPopupMenu> myPopupMenu = <MyPopupMenu>[
  const MyPopupMenu("Rate App", icon: Icon(Icons.star)),
  const MyPopupMenu("Contact", icon: Icon(Icons.contact_mail)),
  const MyPopupMenu("Logout", icon: Icon(Icons.logout)),
];

class MyPopupMenu {
  final String title;
  final Icon icon;

  const MyPopupMenu(this.title, {this.icon});
}

//handle _selectedMenu click -> popup menu
void selectedPopUpMenu(MyPopupMenu popupMenu) {
  switch (popupMenu.title) {
    case "Rate App":
      print("Rate App");
      break;

    case "Contact":
      print("Contact");
      break;

    case "Logout":
      print("Logout");
      break;
  }
}