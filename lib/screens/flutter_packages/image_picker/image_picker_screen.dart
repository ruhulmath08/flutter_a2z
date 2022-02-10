import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_a2z/common_widgets/common_alert_dialog.dart';
import 'package:flutter_a2z/common_widgets/show_flutter_toast.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatefulWidget {
  final String title;
  final Object model;

  const ImagePickerScreen({Key? key, required this.title, required this.model}) : super(key: key);

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  File? image;
  List<File> images = [];

  Future picImage({required ImageSource imageSource}) async {
    try {
      final image = await ImagePicker().pickImage(source: imageSource);
      if (image == null) return;

      final imageTemporary = File(image.path);

      setState(() {
        images.add(imageTemporary);
      });
    } on PlatformException catch (e) {
      log('Failed to pic image: ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final int cardPerRow = (screenWidth / 100).round();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: images.isEmpty
              ? const Text('No Image')
              : GridView.builder(
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: cardPerRow,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onLongPress: () => commonAlertDialog(
                        context: context,
                        title: 'Delete images',
                        description: 'Are yoy sure to delete this images?',
                        isCancelButtonRequired: true,
                        cancelButtonTitle: 'Cancel',
                        cancelButtonPress: () => Navigator.pop(context),
                        isOkButtonRequired: true,
                        okButtonTitle: 'Ok',
                        okButtonPress: () {
                          setState(() {
                            images.remove(images[index]);
                          });
                          Navigator.pop(context);
                        },
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.file(images[index], fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.zero,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () => picImage(imageSource: ImageSource.camera),
                icon: const Icon(Icons.camera_alt),
                label: const Text('Camera'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () => picImage(imageSource: ImageSource.gallery),
                icon: const Icon(Icons.photo),
                label: const Text('Gallery'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => images.isNotEmpty
            ? commonAlertDialog(
                context: context,
                title: 'Clear all images',
                description: 'Are yoy sure to clear all images?',
                isCancelButtonRequired: true,
                cancelButtonTitle: 'Cancel',
                cancelButtonPress: () => Navigator.pop(context),
                isOkButtonRequired: true,
                okButtonTitle: 'Ok',
                okButtonPress: () {
                  setState(() {
                    images.clear();
                  });
                  Navigator.pop(context);
                },
              )
            : showFlutterToast(context: context, message: 'Image list is empty'),
        backgroundColor: Colors.red,
        child: const Icon(Icons.delete, color: Colors.white),
      ),
    );
  }
}
