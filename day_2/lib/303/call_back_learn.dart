import 'package:flutter/material.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({Key? key}) : super(key: key);

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  CallBackUser? _users;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: const [Icon(Icons.apple)]),
      body: Column(
        children: [
          DropdownButton<CallBackUser>(
              value: _users,
              items: CallBackUser.dummyUser().map((e) {
                return DropdownMenuItem(
                  child: Text(
                    e.name,
                  ),
                  value: e,
                );
              }).toList(),
              onChanged: (CallBackUser? callBackUser) {
                setState(() {
                  _users = callBackUser;
                });
              })
        ],
      ),
    );
  }
}

class CallBackUser {
  final String name;
  final int id;

  CallBackUser(this.name, this.id);

  static List<CallBackUser> dummyUser() {
    return [CallBackUser('Mansur', 12), CallBackUser('Eli', 123)];
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CallBackUser && other.name == name && other.id == id;
  }

  @override
  // TODO: implement hashCode
  int get hashCode => super.hashCode;
}
