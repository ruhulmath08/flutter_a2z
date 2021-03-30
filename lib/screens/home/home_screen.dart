import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';
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

  @override
  void initState() {
    super.initState();
    cardItemList = HomeCardItem.fetchAll();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            PopupMenuButton(itemBuilder: (BuildContext context) {
              return myPopupMenu.map((MyPopupMenu popupMenu) {
                return PopupMenuItem(
                  value: popupMenu,
                  child: ListTile(
                    leading: popupMenu.icon,
                    title: Text(
                      popupMenu.title,
                      style: themeData.textTheme.headline6,
                    ),
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
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 2.0, color: Colors.blue[200]),
                        ),
                        child: Icon(card.icon, color: Colors.blue[300]),
                      ),
                      CommonWidgets.addVerticalSpace(10.0),
                      Text(
                        card.title,
                        style: themeData.textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  //go to correspond screen
  void gotoCorrespondScreen(String pageName) {
    switch (pageName) {
      case FLUTTER_BUTTON_SCREEN_TITLE:
        Navigator.pushNamed(context, FLUTTER_BUTTON_SCREEN_ROUTE);
        break;

      case FLUTTER_DIALOG_SCREEN_TITLE:
        Navigator.pushNamed(context, FLUTTER_DIALOG_SCREEN_ROUTE);
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

      case FLUTTER_CHIP_SCREEN_TITLE:
        Navigator.pushNamed(context, FLUTTER_CHIP_SCREEN_ROUTE);
        break;

      case FLUTTER_BIOMETRIC_AUTH_SCREEN_TITLE:
        Navigator.pushNamed(context, FLUTTER_BIOMETRIC_AUTH_SCREEN_ROUTE);
        break;

      case FLUTTER_PACKAGES_SCREEN_TITLE:
        Navigator.pushNamed(context, FLUTTER_PACKAGES_SCREEN_ROUTE);
        break;

      case EXPANDABLE_ELEMENT_SCREEN_TITLE:
        Navigator.pushNamed(context, EXPANDABLE_ELEMENT_SCREEN_ROUTE);
        break;

        case FLUTTER_TABLE_SCREEN_TITLE:
        Navigator.pushNamed(context, FLUTTER_TABLE_SCREEN_ROUTE);
        break;

      case FLUTTER_DATETIME_PICKER_SCREEN_TITLE:
        Navigator.pushNamed(context, FLUTTER_DATETIME_PICKER_SCREEN_ROUTE);
        break;

        case FLUTTER_REORDERABLES_LIST_TITLE:
        Navigator.pushNamed(context, FLUTTER_REORDERABLES_LIST_ROUTE);
        break;
    }
  }
}

//ToDo home screen card have to re-design
