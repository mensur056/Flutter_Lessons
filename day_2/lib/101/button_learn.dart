import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text('hello'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'h',
              style: TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
