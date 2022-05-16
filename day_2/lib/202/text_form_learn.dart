import 'package:flutter/material.dart';

class TextFromLearn extends StatefulWidget {
  const TextFromLearn({Key? key}) : super(key: key);

  @override
  State<TextFromLearn> createState() => _TextFromLearnState();
}

class _TextFromLearnState extends State<TextFromLearn> {
  final GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        child: Column(children: [
          TextFormField(validator: FormFieldValidator().isNotEmpty),
          DropdownButtonFormField<String>(items: const [
            DropdownMenuItem(
              child: Text('Azerbaijan'),
              value: '1',
            ),
            DropdownMenuItem(
              child: Text('baku'),
              value: '2',
            ),
            DropdownMenuItem(
              child: Text('England'),
              value: '3',
            ),
          ], onChanged: (value) {}),
          ElevatedButton(
              onPressed: () {
                if (_key.currentState?.validate() ?? false) {
                  print('ok');
                }
              },
              child: const Text('Save'))
        ]),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : 'This is Empty';
  }
}
