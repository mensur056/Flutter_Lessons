import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            height: 10,
            width: 10.0 * (currentLength ?? 0),
            color: Colors.red,
          );
        },
        decoration: const InputDecoration(
            prefix: Icon(Icons.mail), border: OutlineInputBorder(), labelText: 'Mail', hintText: 'Mail'),
      ),
    );
  }
}
