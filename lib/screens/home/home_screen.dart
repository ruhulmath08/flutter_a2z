import 'package:flutter/material.dart';
import 'package:flutter_a2z/models/home_card_item.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_a2z/screens/home/navation_drawer.dart';
import 'package:flutter_a2z/screens/home/popup_menu.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  const HomeScreen({Key key, this.title}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<HomeCardItem> cardItemList = [];

  //MyPopupMenu _selectedMenus = myPopupMenu[0];

  @override
  void initState() {
    super.initState();
    cardItemList = HomeCardItem.fetchAll();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return myPopupMenu.map((MyPopupMenu popupMenu) {
              return PopupMenuItem(
                value: popupMenu,
                child: ListTile(
                  leading: popupMenu.icon,
                  title: Text(popupMenu.title),
                  onTap: () {
                    selectedPopUpMenu(popupMenu);
                    Navigator.of(context).pop();
                  },
                ),
              );
            }).toList();
          })
        ],
      ),
      drawer: myDrawer(context),
      body: GridView(
        padding: const EdgeInsets.all(5),
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: cardItemList.map((card) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            elevation: 5,
            child: InkWell(
              onTap: () {
                gotoCorrespondScreen(card.title);
              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 2.0, color: Colors.blue),
                      ),
                      child: Icon(card.icon, color: Colors.blue),
                    ),
                    const SizedBox(height: 10),
                    Text(card.title, style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  //go to correspond screen
  void gotoCorrespondScreen(String pageName) {
    switch (pageName) {
      case FLUTTER_BUTTON_SCREEN_TITLE:
        Navigator.pushNamed(context, FLUTTER_BUTTON_SCREEN_ROUTE);
        break;

      case FLUTTER_BOTTOM_NAVIGATION_VIEW_SCREEN_TITLE:
        Navigator.pushNamed(context, FLUTTER_BOTTOM_NAVIGATION_VIEW_SCREEN_ROUTE);
        break;

      case FLUTTER_TAB_VIEW_SCREEN_TITLE:
        Navigator.pushNamed(context, FLUTTER_TAB_VIEW_SCREEN_ROUTE);
        break;

      case FLUTTER_CRUD_SCREEN_TITLE:
        Navigator.pushNamed(context, FLUTTER_CRUD_SCREEN_ROUTE);
        break;

      case FLUTTER_CARD_SCREEN_TITLE:
        Navigator.pushNamed(context, FLUTTER_CARD_SCREEN_ROUTE);
        break;
    }
  }
}
