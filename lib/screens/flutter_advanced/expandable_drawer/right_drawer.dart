import 'package:flutter/material.dart';

Widget rightDrawer(BuildContext context){
  return Drawer(
    child: ListView(
      physics: const BouncingScrollPhysics(),
    ),
  );
}