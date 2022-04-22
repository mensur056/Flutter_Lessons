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
      body: const TextField(
        decoration: InputDecoration(
            prefix: Icon(Icons.mail), border: OutlineInputBorder(), labelText: 'Mail', hintText: 'Mail'),
      ),
    );
  }
}
