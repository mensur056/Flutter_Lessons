import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            color: Theme.of(context).colorScheme.error,
            child: const SizedBox(
              height: 100,
              width: 100,
            ),
          ),
          Card(
            color: Theme.of(context).colorScheme.primary,
            child: SizedBox(
              height: 100,
              width: 200,
            ),
          )
        ],
      ),
    );
  }
}