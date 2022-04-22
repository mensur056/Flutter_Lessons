import 'package:flutter/material.dart';

class ElevatedButtonText extends StatefulWidget {
  const ElevatedButtonText({Key? key}) : super(key: key);

  @override
  State<ElevatedButtonText> createState() => _ElevatedButtonTextState();
}

class _ElevatedButtonTextState extends State<ElevatedButtonText> {
  int _counterButton = 0;
  final String _welcomeText = 'Hello';

  void changeNumber() {
    setState(() {
      _counterButton++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:changeNumber, child: Text('$_welcomeText $_counterButton'));
  }
}
