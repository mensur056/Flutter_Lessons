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
          Container(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 300,
                  color: Colors.green,
                ),
                Container(
                  width: 300,
                  color: Colors.green,
                ),
                const Placeholder(),
                Container(
                  width: 300,
                  color: Colors.green,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
