import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final IconSize iconSize = IconSize();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.label,
              color: Theme.of(context).backgroundColor,
              size: IconSize().iconSize,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.label,
              color: Theme.of(context).backgroundColor,
              size: IconSize().iconSize,
            ),
          ),IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.label,
              color: Theme.of(context).backgroundColor,
              size: IconSize().iconSize,
            ),
          ),
         
         
        ],
      ),
    );
  }
}

class IconSize {
  final double iconSize = 35;
}
