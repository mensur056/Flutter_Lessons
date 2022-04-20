import 'package:flutter/material.dart';

class KnowledgeApp extends StatelessWidget {
  const KnowledgeApp({Key? key}) : super(key: key);
  final String data = 'Create your first note';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Padding(
        padding: PaddingHorizontal().horizontalPadding,
        child: Column(
          children: [ImageItems().imageName, Text(data)],
        ),
      ),
    );
  }
}

class PaddingHorizontal {
  final EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
}

class ImageItems {
  final Image imageName = Image.asset('assets/images/im_appleBook.png');
}
