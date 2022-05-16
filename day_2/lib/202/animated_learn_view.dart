import 'package:flutter/material.dart';

class AnuimatedLearnView extends StatefulWidget {
  const AnuimatedLearnView({Key? key}) : super(key: key);

  @override
  State<AnuimatedLearnView> createState() => _AnuimatedLearnViewState();
}

class _AnuimatedLearnViewState extends State<AnuimatedLearnView>
    with TickerProviderStateMixin {
  bool _isVisible = false;
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: _DurationItems.myLowDuration);
  }

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
        controller.animateTo(_isVisible ? 1 : 0);
      }),
      appBar: AppBar(),
      body: Column(
        children: [
          AnimatedCrossFade(
            crossFadeState: _isVisible
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
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
          AnimatedIcon(icon: AnimatedIcons.add_event, progress: controller),
          AnimatedContainer(
            duration: _DurationItems.myLowDuration,
            height: _isVisible ? 0 : MediaQuery.of(context).size.width * 0.3,
            width: MediaQuery.of(context).size.height * 0.3,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}

class _DurationItems {
  static const myLowDuration = Duration(seconds: 2);
}
