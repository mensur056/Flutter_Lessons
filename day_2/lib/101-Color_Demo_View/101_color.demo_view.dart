import 'package:flutter/material.dart';

class ColorDemoView extends StatefulWidget {
  const ColorDemoView({Key? key}) : super(key: key);

  @override
  State<ColorDemoView> createState() => _ColorDemoViewState();
}

class _ColorDemoViewState extends State<ColorDemoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Container(
                color: Colors.red,
                height: 20,
                width: 20,
              ),
              label: 'red'),
          BottomNavigationBarItem(
              icon: Container(
                color: Colors.green,
                height: 20,
                width: 20,
              ),
              label: 'green'),
          BottomNavigationBarItem(
              icon: Container(
                color: Colors.blue,
                height: 20,
                width: 20,
              ),
              label: 'blue')
        ],
      ),
    );
  }
}
