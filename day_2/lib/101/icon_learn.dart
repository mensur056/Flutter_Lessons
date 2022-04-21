import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final _IconSize iconSize = _IconSize();
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
              size: _IconSize().iconSize,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.label),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.label,  
              color: Theme.of(context).backgroundColor,
              size: _IconSize().iconSize,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.label,
              color: Theme.of(context).backgroundColor,
              size: _IconSize().iconSize,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.label,
              color: Theme.of(context).backgroundColor,
              size: _IconSize().iconSize,
            ),
          ),IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.label,
              color: Theme.of(context).backgroundColor,
              size: _IconSize().iconSize,
            ),
          ),IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.label,
              color: Theme.of(context).backgroundColor,
              size: _IconSize().iconSize,
            ),
          ),
        ],
      ),
    );
  }
}

class _IconSize {
  final double iconSize = 35;
}
