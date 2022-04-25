import 'package:day_2/101/101-KnowledgeApp/knowledge_app.dart';
import 'package:flutter/material.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const KnowledgeApp();
        }));
      },child: const Icon(Icons.navigate_next_rounded),),
    );
  }
}
