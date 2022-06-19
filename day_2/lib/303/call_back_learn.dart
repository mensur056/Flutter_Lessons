import 'package:day_2/product/widget/button/answer_button.dart';
import 'package:day_2/product/widget/button/loding_button.dart';
import 'package:day_2/product/widget/callback_dropdown.dart';
import 'package:flutter/material.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({Key? key}) : super(key: key);

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: const [Icon(Icons.apple)]),
      body: Column(
        children: [
          CallBackDropDown(onUserSelected: (CallBackUser user) {
            print(user);
          }),
          AnswerButton(
            onNumber: (number) {
              return number / 2 == 1;
            },
          ),
          LoadingButton(
              title: 'Save',
              onPressed: () {
                return Future.delayed(const Duration(seconds: 2));
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
}
