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
          TextFormField(
            validator: (value) {
              return (value?.isNotEmpty ?? false) ? null : 'This form isempty';
            },
          ),
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
