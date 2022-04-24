import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KnowledgeApp extends StatelessWidget {
  const KnowledgeApp({Key? key}) : super(key: key);
  final String data = 'Create your first note';
  final String data1 = 'Create your first note';
  final String buttonText = 'Create a note';
  final String importNote = 'Import note';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
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
              child: SizedBox(
                height: 70,
                child: Center(
                  child: Text(
                    buttonText,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Padding(
                padding: PaddingEverywhere().verticalPadding,
                child: Text(
                  importNote,
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaddingEverywhere {
  final EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets verticalPadding = const EdgeInsets.only(top: 15, bottom: 15);
}

class ImageItems {
  final Image imageName = Image.asset('assets/images/im_appleBook.png');
}
