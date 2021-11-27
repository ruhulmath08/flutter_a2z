import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';
import 'package:flutter_a2z/common_widgets/common_floating_action_button_for_display_code.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherScreen extends StatelessWidget {
  const UrlLauncherScreen({Key? key, required this.title, required this.model}) : super(key: key);

  final String title;
  final Object model;

  @override
  Widget build(BuildContext context) {
    const String url = 'https://flutter.dev';
    const String rcCollegeUrl = 'http://rc.edu.bd/';
    const String phoneNumber = '+8801745077380';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: appScreenDefaultPadding,
          children: [
            ElevatedButton(
              onPressed: () async {
                try {
                  if (await canLaunch(url)) {
                    await launch(url, forceSafariVC: false);
                  }
                } catch (e) {
                  log('Cannot Open URL in Browser: ', error: e.toString());
                }
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 45),
              ),
              child: const Text('Open URL in Browser'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                try {
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceSafariVC: true, //iOS
                      forceWebView: true, //Android
                      enableJavaScript: true, //Android
                    );
                  }
                } catch (e) {
                  log('Cannot Open URL inside App: ', error: e.toString());
                }
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 45),
              ),
              child: const Text('Open URL inside App'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                try {
                  if (await canLaunch(url)) {
                    await launch(
                      rcCollegeUrl,
                      forceSafariVC: true, //iOS
                      forceWebView: true, //Android
                      enableJavaScript: true, //Android
                    );
                  }
                } catch (e) {
                  log('Cannot Open URL(http) inside App: ', error: e.toString());
                }
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 45),
              ),
              child: const Text('Open URL(http) inside App'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                const url = 'tel:$phoneNumber';
                try {
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                } catch (e) {
                  log('Cannot make phone call: ', error: e.toString());
                }
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 45),
              ),
              child: const Text('Make Phone Call'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                const url = 'sms:$phoneNumber';
                try {
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                } catch (e) {
                  log('Cannot send sms: ', error: e.toString());
                }
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 45),
              ),
              child: const Text('Send Text Message'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                try {
                  const toEmail = 'ruhulmath08@gmail.com';
                  const subject = 'Send Email from flutter app';
                  const message = 'Hello Ruhul!\n\nCheck this email please. This mail is from your "Flutter a2z" App\n\nhttps://github.com/ruhulmath08/flutter_a2z';
                  final url = 'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                } catch (e) {
                  log('Cannot sent Email: ', error: e.toString());
                }
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 45),
              ),
              child: const Text('Send Email'),
            ),
          ],
        ),
      ),
      floatingActionButton: CommonFloatingActionButtonForDisplayCode(
        heroTag: urlLauncherRoute,
        screenTitle: urlLauncherTitle,
        filePath: urlLauncherFilePath,
        model: model,
      ),
    );
  }
}
