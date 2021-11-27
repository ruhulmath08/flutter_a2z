import 'package:flutter/material.dart';

class RightDrawer extends StatelessWidget {
  const RightDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text('Md. Ruhul Amin'),
                accountEmail: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('ruhulmath08@gmail.com'),
                    Text('User'),
                  ],
                ),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  // image: DecorationImage(
                  //   fit: BoxFit.cover,
                  //   colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
                  //   image: const ExactAssetImage(
                  //     'assets/images/rajshahi_college.jpg',
                  //   ),
                  // ),
                ),
                currentAccountPicture: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    'assets/images/person_icon.png',
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
