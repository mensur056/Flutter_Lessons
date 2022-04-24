import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            height: 300,
            color: Theme.of(context).colorScheme.error,
          ),
          const Placeholder(),
          Container(
            height: 300,
            color: Theme.of(context).colorScheme.error,
          ),
        ],
      ),
    );
  }
}
