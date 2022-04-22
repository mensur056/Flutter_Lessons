import 'package:day_2/product/elevated_button.dart';
import 'package:flutter/material.dart';

class StateFulWidgetLearn extends StatefulWidget {
  const StateFulWidgetLearn({Key? key}) : super(key: key);

  @override
  State<StateFulWidgetLearn> createState() => _StateFulWidgetLearnState();
}

class _StateFulWidgetLearnState extends State<StateFulWidgetLearn> {
  int _counter = 0;

  void _changeValue(bool value) {
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
        child: Column(
          children: [
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 20),
            ),
            const ElevatedButtonText()
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: FloatingActionButton(
              onPressed: () {
                _changeValue(false);
              },
              child: const Icon(Icons.remove),
            ),
          ),
          FloatingActionButton(
            onPressed: () {

              _changeValue(true);
            },
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
