import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toast/toast.dart';

class CapturePictureDisplayList extends StatefulWidget {
  final String title;

  const CapturePictureDisplayList({Key key, this.title}) : super(key: key);

  @override
  _CapturePictureDisplayListState createState() => _CapturePictureDisplayListState();
}

class _CapturePictureDisplayListState extends State<CapturePictureDisplayList> {
  final List<File> _images = [];
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        _images.add(_image);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2,
            child: _images.isNotEmpty
                ? ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: _images.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          showDialogForDeleteImage(
                              context: context,
                              index: index,
                              imageFile: _images[index],
                              onPress: () {
                                setState(() {
                                  _images.removeAt(index);
                                });
                                Navigator.of(context).pop();
                              });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.red.shade300, width: 2),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.file(
                              _images[index],
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width - 20,
                            ),
                          ),
                        ),
                      );
                    },
                  )
                : Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red.shade300, width: 2),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/no_image.png',
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width - 20,
                      ),
                    ),
                  ),
          ),
          SizedBox(
            height: 30,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: _images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black26,
                      child: Text(
                        (index + 1).toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    );
                  },
                ),
                OutlinedButton.icon(
                  icon: const Icon(Icons.camera_alt_rounded),
                  label: const Text('Capture Image'),
                  onPressed: () {
                    //list index starts from 0, here 2 means 0, 1, 3 => 3
                    _images.length <= 2
                        ? getImage()
                        : Toast.show(
                            'You Cannot capture more than 3 image',
                            context,
                            duration: Toast.LENGTH_LONG,
                            backgroundColor: Colors.black54,
                          );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Future<Widget> showDialogForDeleteImage({
  BuildContext context,
  int index,
  VoidCallback onPress,
  File imageFile,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: const Text('Delete This Image'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Are you sure to delete this image from list?'),
            const SizedBox(height: 10),
            Image.file(
              imageFile,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height / 2,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
                    onPressed: () {
                      Navigator.of(dialogContext).pop(); // Dismiss alert dialog
                    },
                    child: const Text('No'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
                    onPressed: onPress,
                    child: const Text('Yes'),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
