import 'package:flutter/material.dart';

class KnowledgeApp extends StatelessWidget {
  const KnowledgeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: PaddingHorizontal().horizontalPadding,
        child: Column(
          children: [ImageItems().imageName],
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
  final Image imageName = Image.network(
      'https://www.clipartmax.com/png/middle/145-1459064_drawing-apple-book-clip-art-manzana-sobre-libros-png.png');
}
