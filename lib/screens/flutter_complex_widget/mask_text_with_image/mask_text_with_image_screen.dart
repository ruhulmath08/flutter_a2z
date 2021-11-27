import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';
import 'package:flutter_a2z/common_widgets/common_floating_action_button_for_display_code.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class MaskTextWithImageScreen extends StatefulWidget {
  const MaskTextWithImageScreen({
    Key? key,
    required this.title,
    required this.model,
  }) : super(key: key);

  final String title;
  final Object model;

  @override
  _MaskTextWithImageScreenState createState() => _MaskTextWithImageScreenState();
}

class _MaskTextWithImageScreenState extends State<MaskTextWithImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: appScreenDefaultPadding,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Mask Text with Image From Asset Image'),
              MaskedImage(
                image: AssetImage('assets/images/leaf_image.png'),
                child: Text(
                  'MASK',
                  style: TextStyle(
                    fontSize: 120,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(height: 20, color: Colors.black),
              Text('Mask Text with Image From Network Image'),
              MaskedImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1614103909223-dc6b5619635b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29sb3JmdWwlMjBza3l8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
                child: Text(
                  'SKY MASK',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 120,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CommonFloatingActionButtonForDisplayCode(
        heroTag: maskTextWithImageRoute,
        screenTitle: maskTextWithImageTitle,
        filePath: maskTextWithImageFilePath,
        model: widget.model,
      ),
    );
  }
}

class MaskedImage extends StatelessWidget {
  const MaskedImage({
    required this.image,
    required this.child,
  });

  final ImageProvider image;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ui.Image>(
      future: loadImage(),
      builder: (BuildContext context, snap) {
        if (snap.hasData) {
          return ShaderMask(
            blendMode: BlendMode.srcATop,
            shaderCallback: (Rect bounds) {
              return ImageShader(
                snap.data!,
                TileMode.clamp,
                TileMode.clamp,
                Matrix4.identity().storage,
              );
            },
            child: child,
          );
        } else {
          return Container();
        }
      },
    );
  }

  Future<ui.Image> loadImage() async {
    final completer = Completer<ui.Image>();
    final stream = image.resolve(ImageConfiguration());
    stream.addListener(
      ImageStreamListener((info, _) => completer.complete(info.image)),
    );

    return completer.future;
  }
}
