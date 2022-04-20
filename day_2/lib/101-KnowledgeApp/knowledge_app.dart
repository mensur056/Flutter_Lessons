import 'package:flutter/material.dart';

class KnowledgeApp extends StatelessWidget {
  const KnowledgeApp({Key? key}) : super(key: key);
  final String data = 'Create your first note';
  final String data1 = 'Create your first note';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Padding(
        padding: PaddingHorizontal().horizontalPadding,
        child: Column(
          children: [
            ImageItems().imageName,
            Text(
              data,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: PaddingVertical().verticalPadding,
              child: Text(
                data * 6,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PaddingHorizontal {
  final EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
}

class PaddingVertical {
  final EdgeInsets verticalPadding = const EdgeInsets.only(top: 20);
}

class ImageItems {
  final Image imageName = Image.asset('assets/images/im_appleBook.png');
}
