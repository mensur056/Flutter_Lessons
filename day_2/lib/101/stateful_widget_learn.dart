import 'package:flutter/material.dart';

class StateFulWidgetLearn extends StatefulWidget {
  const StateFulWidgetLearn({Key? key}) : super(key: key);

  @override
  State<StateFulWidgetLearn> createState() => _StateFulWidgetLearnState();
}

class _StateFulWidgetLearnState extends State<StateFulWidgetLearn> {
  int counter = 0;

  void incrementValue() {
    setState(() {
      counter++;
    });
  }

  void deincrementValue() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(counter.toString()),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: FloatingActionButton(
              onPressed: () {
                deincrementValue();
              },
              child: const Icon(Icons.remove),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              incrementValue();
            },
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
