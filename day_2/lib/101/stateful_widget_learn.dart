import 'package:flutter/material.dart';

class StateFulWidgetLearn extends StatefulWidget {
  const StateFulWidgetLearn({Key? key}) : super(key: key);

  @override
  State<StateFulWidgetLearn> createState() => _StateFulWidgetLearnState();
}

class _StateFulWidgetLearnState extends State<StateFulWidgetLearn> {
  int _counter = 0;

  void _chageValue(bool value) {
    if (value) {
      _counter++;
    } else {
      _counter--;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          _counter.toString(),
          style: const TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: FloatingActionButton(
              onPressed: () {
                _chageValue(false);
              },
              child: const Icon(Icons.remove),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              _chageValue(true);
            },
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
