import 'package:day_2/101/101-KnowledgeApp/knowledge_app.dart';
import 'package:day_2/101/navigate_detail_learn.dart';
import 'package:flutter/material.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const Placeholder(
            color: Colors.red,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToWidget(context, const NavigateDetailLearn());
        },
        child: const Icon(Icons.navigate_next_rounded),
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (context) {
          return widget;
        },
      ),
    );
  }
}
