import 'package:flutter/material.dart';

class ImageLearn202 extends StatelessWidget {
  const ImageLearn202({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Image.asset(ImagePaths.im_appleBook.path()),
    );
  }
}

// ignore: constant_identifier_names
enum ImagePaths { im_appleBook }

extension ImagePathsExtension on ImagePaths {
  String path() {
    return 'assets/images/$name.png';
  }
}
