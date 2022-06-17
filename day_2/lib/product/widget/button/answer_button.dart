import 'dart:math';

import 'package:flutter/material.dart';

class AnswerButton extends StatefulWidget {
  const AnswerButton({Key? key, this.onNumber}) : super(key: key);
  final bool Function(int number)? onNumber;
  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  Color? _color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: _color),
        onPressed: () {
          final reslut = Random().nextInt(20);
          final response = widget.onNumber?.call(reslut) ?? false;
          setState(() {
            _color = response ? Colors.green : Colors.red;
          });
        },
        child: const Text('Click'));
  }
}
