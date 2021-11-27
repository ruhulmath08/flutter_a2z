import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_floating_action_button_for_display_code.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:store_redirect/store_redirect.dart';

class StoreRedirectScreen extends StatelessWidget {
  const StoreRedirectScreen({Key? key, required this.title, required this.model}) : super(key: key);
  final String title;
  final Object model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            StoreRedirect.redirect(
              androidAppId: 'com.android.chrome',
              iOSAppId: '535886823',
            );
          },
          child: const Text('Open PlayStore'),
        ),
      ),
      floatingActionButton: CommonFloatingActionButtonForDisplayCode(
        heroTag: storeRedirectRoute,
        screenTitle: storeRedirectTitle,
        filePath: storeRedirectFilePath,
        model: model,
      ),
    );
  }
}
