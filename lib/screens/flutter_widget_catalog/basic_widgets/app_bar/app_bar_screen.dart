import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';
import 'package:flutter_a2z/common_widgets/show_flutter_toast.dart';

class AppBarScreen extends StatefulWidget {
  final String title;
  const AppBarScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<AppBarScreen> createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  bool useAppBarBackgroundColor = false;
  bool useTitleSpacing = false;
  bool useCenterTitle = false;
  bool useElevation = false;
  bool useFlexibleSpace = false;
  bool useImageDecoration = false;
  bool addElevation = false;
  bool useTabBar = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: useAppBarBackgroundColor ? Colors.green : null,
          elevation: useElevation ? 20 : 0,
          title: Text(widget.title),
          titleSpacing: useTitleSpacing ? 16 : 0, //default titleSpacing is 16px
          centerTitle: useCenterTitle,
          leading: IconButton(
            onPressed: () {
              showFlutterToast(
                context: context,
                message: 'Clicked on menu button',
              );
            },
            icon: const Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {
                showFlutterToast(
                  context: context,
                  message: 'Clicked on notifications button',
                );
              },
              icon: const Icon(Icons.notifications_none),
            ),
            IconButton(
              onPressed: () {
                showFlutterToast(
                  context: context,
                  message: 'Clicked on search button',
                );
              },
              icon: const Icon(Icons.search),
            ),
          ],
          flexibleSpace: useFlexibleSpace
              ? Container(
                  decoration: useImageDecoration
                      ? const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/nature_8.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        )
                      : const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.green, Colors.red],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                        ),
                )
              : null,
          bottom: useTabBar
              ? const TabBar(
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(icon: Icon(Icons.home), text: 'Home'),
                    Tab(icon: Icon(Icons.list_alt), text: 'Feed'),
                    Tab(icon: Icon(Icons.person), text: 'Profile'),
                    Tab(icon: Icon(Icons.settings), text: 'Settings'),
                  ],
                )
              : null,
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: appScreenDefaultPadding,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CheckboxListTile(
                  value: useCenterTitle,
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  title: const Text('''Use AppBar "useCenterTitle"'''),
                  subtitle: const Text('''By default AppBar "useCenterTitle" is false'''),
                  onChanged: (newValue) {
                    setState(() {
                      useCenterTitle = newValue!;
                    });
                  },
                ),
                if (!useCenterTitle)
                  CheckboxListTile(
                    value: useTitleSpacing,
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    title: const Text('''Use AppBar "titleSpacing"'''),
                    subtitle: const Text('''Default "titleSpacing" is 16 px and it's no need to use when use "useCenterTitle"'''),
                    onChanged: (newValue) {
                      setState(() {
                        useTitleSpacing = newValue!;
                      });
                    },
                  ),
                CheckboxListTile(
                  value: useElevation,
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  title: const Text('''Use AppBar "elevation"'''),
                  subtitle: const Text('''By default AppBar "elevation" is 0'''),
                  onChanged: (newValue) {
                    setState(() {
                      useElevation = newValue!;
                    });
                  },
                ),
                CheckboxListTile(
                  value: useTabBar,
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  title: const Text('''Use "TabBar"'''),
                  onChanged: (newValue) {
                    setState(() {
                      useTabBar = newValue!;
                    });
                  },
                ),
                CheckboxListTile(
                  value: useAppBarBackgroundColor,
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  title: const Text('''Use AppBar "backgroundColor"'''),
                  subtitle: const Text('''"flexibleSpace" will not working when "backgroundColor" is using'''),
                  onChanged: (newValue) {
                    setState(
                      () {
                        useAppBarBackgroundColor = newValue!;
                        //flexibleSpace" will not working when "backgroundColor" is using
                        if (useAppBarBackgroundColor) {
                          useFlexibleSpace = false;
                        }
                      },
                    );
                  },
                ),
                CheckboxListTile(
                  value: useFlexibleSpace,
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  title: const Text('''Use AppBar "flexibleSpace"'''),
                  subtitle: const Text('''"flexibleSpace" will not working when "backgroundColor" is using'''),
                  onChanged: (newValue) {
                    setState(
                      () {
                        useFlexibleSpace = newValue!;
                        //flexibleSpace" will not working when "backgroundColor" is using
                        if (useFlexibleSpace) {
                          useAppBarBackgroundColor = false;
                        }
                      },
                    );
                  },
                ),
                if (useFlexibleSpace)
                  CheckboxListTile(
                    value: useImageDecoration,
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    title: const Text('''Use AppBar "DecorationImage"'''),
                    subtitle: const Text('''"DecorationImage" will not working when "LinearGradient" is using'''),
                    onChanged: (newValue) {
                      setState(
                        () {
                          useImageDecoration = newValue!;
                          //
                        },
                      );
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
