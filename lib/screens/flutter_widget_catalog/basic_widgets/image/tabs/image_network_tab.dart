import 'package:flutter/material.dart';
import 'package:flutter_a2z/app_style/app_style.dart';

class ImageNetworkTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: appScreenDefaultPadding,
        child: Image.network(
          'https://wallpaperaccess.com/full/760289.jpg',
          loadingBuilder: (context, child, progress) {
            return progress == null
                ? child
                : const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
          },
        ),
      ),
    );
  }
}
