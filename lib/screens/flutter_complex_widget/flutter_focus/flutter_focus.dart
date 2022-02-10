import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/show_flutter_toast.dart';
import 'package:flutter_a2z/screens/flutter_complex_widget/flutter_focus/tabs/advanced.dart';
import 'package:flutter_a2z/screens/flutter_complex_widget/flutter_focus/tabs/basic_tab.dart';
import 'package:flutter_a2z/screens/flutter_complex_widget/flutter_focus/tabs/complex.dart';

class FlutterFocusScreen extends StatelessWidget {
  final String title;
  final Object model;
  const FlutterFocusScreen({Key? key, required this.title, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 10, bottom: 5),
                child: Material(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: const BorderSide(color: Colors.white),
                  ),
                  color: Colors.blue.shade300,
                  child: InkWell(
                    child: const Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Center(
                        child: Text('Save', style: TextStyle(color: Colors.white, fontSize: 16.0)),
                      ),
                    ),
                    onTap: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      showFlutterToast(context: context, message: 'hello');
                    },
                  ),
                ),
              ),
            ],
            bottom: const TabBar(
              indicatorWeight: 3,
              indicatorColor: Colors.white,
              physics: BouncingScrollPhysics(),
              tabs: [
                Tab(text: 'Basic'),
                Tab(text: 'Advanced'),
                Tab(text: 'Complex'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              BasicTab(),
              AdvancedTab(),
              ComplexTab(),
            ],
          ),
        ),
      ),
    );
  }
}
