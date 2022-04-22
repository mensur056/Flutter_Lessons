import 'package:day_2/101-KnowledgeApp-2/knowledge_app_2.dart';
import 'package:day_2/101-KnowledgeApp/knowledge_app.dart';
import 'package:day_2/101/icon_learn.dart';
import 'package:day_2/101/indicator_learn.dart';
import 'package:flutter/material.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView(
        children: [IconLearnView(),const KnowledgeApp(), const KnowledgeApp2()],
      ),
    );
  }
}
