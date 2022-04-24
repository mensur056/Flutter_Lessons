import 'package:flutter/material.dart';

class ColorDemoView extends StatefulWidget {
  const ColorDemoView({Key? key, required this.initialColor}) : super(key: key);
  final Color? initialColor;

  @override
  State<ColorDemoView> createState() => _ColorDemoViewState();
}

class _ColorDemoViewState extends State<ColorDemoView> {
  Color? _backgroundColor;


  @override
  void didUpdateWidget(covariant ColorDemoView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialColor != widget.initialColor && widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }
  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:_backgroundColor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == _MyBackgroundColor.red.index) {
            changeBackgroundColor(Colors.red);
          } else if (value == _MyBackgroundColor.blue.index) {
            changeBackgroundColor(Colors.blue);
          } else if (value == _MyBackgroundColor.green.index) {
            changeBackgroundColor(Colors.green);
          }
        },
        items: const [
          BottomNavigationBarItem(
              icon: _ContainerColors(
                color: Colors.red,
              ),
              label: 'red'),
          BottomNavigationBarItem(icon: _ContainerColors(color: Colors.green), label: 'green'),
          BottomNavigationBarItem(
              icon: _ContainerColors(
                color: Colors.blue,
              ),
              label: 'blue')
        ],
      ),
    );
  }
}

enum _MyBackgroundColor { red, green, blue }

class _ContainerColors extends StatelessWidget {
  const _ContainerColors({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 20,
      width: 20,
    );
  }
}
