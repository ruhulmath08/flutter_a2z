import 'package:flutter/material.dart';
import 'package:flutter_a2z/models/home_model.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<HomeModel> homeModels = HomeModel.fetchAll();
    return SafeArea(
      child: Drawer(
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
            Expanded(
              child: ListView.separated(
                itemCount: homeModels.length,
                separatorBuilder: (context, index) {
                  return const Divider(color: Colors.black45);
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    visualDensity: const VisualDensity(vertical: -4),
                    title: Text(homeModels[index].name),
                    trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
