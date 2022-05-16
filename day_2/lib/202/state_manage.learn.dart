import 'package:day_2/202/service/state_manage_view_model.dart';
import 'package:flutter/material.dart';

class StateManageLearn extends StatefulWidget {
  const StateManageLearn({Key? key}) : super(key: key);

  @override
  State<StateManageLearn> createState() => _StateManageLearnState();
}

class _StateManageLearnState extends StateManageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
