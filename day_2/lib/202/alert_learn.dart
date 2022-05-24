import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({Key? key}) : super(key: key);

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return const ImageZoomDialog();
                });
          },
          child: const Icon(Icons.add)),
    );
  }
}

class ImageZoomDialog extends StatelessWidget {
  const ImageZoomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: InteractiveViewer(
        child: Image.network(
          'https://picsum.photos/200',
          fit: BoxFit.cover,
          height: 400,
        ),
      ),
    );
  }
}
