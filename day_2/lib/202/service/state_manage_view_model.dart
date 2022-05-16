import 'package:flutter/material.dart';

import '../state_manage.learn.dart';

class StateManageViewModel extends State<StateManageLearn> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
  }

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
