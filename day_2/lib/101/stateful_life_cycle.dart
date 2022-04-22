import 'package:day_2/101/app_bar_learn.dart';
import 'package:flutter/material.dart';

class StateFulLifeCycle extends StatefulWidget {
  const StateFulLifeCycle({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  State<StateFulLifeCycle> createState() => _StateFulLifeCycleState();
}

class _StateFulLifeCycleState extends State<StateFulLifeCycle> {
  String _message = '';
  late final bool _isOdd;

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    if (_isOdd) {
      _message += ' Cut';
    } else {
      _message += ' Tek';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
