import 'package:flutter/material.dart';

class KnowledgeApp extends StatelessWidget {
  const KnowledgeApp({Key? key}) : super(key: key);
  final String data = 'Create your first note';
  final String data1 = 'Create your first note';
  final String buttonText = 'Create a note';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Padding(
        padding: PaddingEverywhere().horizontalPadding,
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
              padding: PaddingEverywhere().verticalPadding,
              child: Text(
                data * 6,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: Colors.grey),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: PaddingEverywhere().buttonPaddingWH,
                child: Text(
                  buttonText,
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PaddingEverywhere {
  final EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets verticalPadding = const EdgeInsets.only(top: 10);
  final EdgeInsets buttonPaddingWH =
      const EdgeInsets.symmetric(horizontal: 50, vertical:25);
}

class ImageItems {
  final Image imageName = Image.asset('assets/images/im_appleBook.png');
}
