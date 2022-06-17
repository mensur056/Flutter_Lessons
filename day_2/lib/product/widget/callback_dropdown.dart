import 'package:day_2/303/call_back_learn.dart';
import 'package:flutter/material.dart';

class CallBackDropDown extends StatefulWidget {
  const CallBackDropDown({Key? key, required this.onUserSelected})
      : super(key: key);
  final void Function(CallBackUser user) onUserSelected;
  @override
  State<CallBackDropDown> createState() => _CallBackDropDownState();
}

class _CallBackDropDownState extends State<CallBackDropDown> {
  CallBackUser? _users;

  void _updateUser(CallBackUser? item) {
    setState(() {
      _users = item;
    });
    if (_users != null) {
      widget.onUserSelected.call(_users!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<CallBackUser>(
        value: _users,
        items: CallBackUser.dummyUser().map((e) {
          return DropdownMenuItem(
            child: Text(
              e.name,
            ),
            value: e,
          );
        }).toList(),
        onChanged: _updateUser);
  }
}
