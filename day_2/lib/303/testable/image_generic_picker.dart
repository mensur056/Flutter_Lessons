import 'package:day_2/product/utilty/image_upload.dart';
import 'package:flutter/material.dart';

class ImageGenericPicker extends StatefulWidget {
  const ImageGenericPicker({Key? key}) : super(key: key);

  @override
  State<ImageGenericPicker> createState() => _ImageGenericPickerState();
}

class _ImageGenericPickerState extends State<ImageGenericPicker> {
  final _imageUploadManager = ImageUploadManager();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                _imageUploadManager.fetchFromLibrary();
              },
              child: const Text('Select image from gallery')),
          ElevatedButton(
              onPressed: () {
                _imageUploadManager.fetchFromCamera();
              },
              child: const Text('Select image from camera')),
          ElevatedButton(
              onPressed: () {}, child: const Text('Select image from cam'))
        ],
      ),
    );
  }
}
