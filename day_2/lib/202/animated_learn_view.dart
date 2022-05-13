import 'package:flutter/material.dart';

class AnuimatedLearnView extends StatefulWidget {
  const AnuimatedLearnView({Key? key}) : super(key: key);

  @override
  State<AnuimatedLearnView> createState() => _AnuimatedLearnViewState();
}

class _AnuimatedLearnViewState extends State<AnuimatedLearnView> {
  bool _isVisible = false;
  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        _changeVisible();
      }),
      appBar: AppBar(),
      body: AnimatedCrossFade(
        crossFadeState:
            _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: _DurationItems.myLowDuration,
        firstChild: Container(
          height: 100,
          width: 200,
          color: Colors.amberAccent,
        ),
        secondChild: Container(
          height: 200,
          width: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}

class _DurationItems {
  static const myLowDuration = Duration(seconds: 2);
}
