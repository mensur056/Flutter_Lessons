import 'package:day_2/101-KnowledgeApp-2/knowledge_app_2.dart';
import 'package:day_2/101-KnowledgeApp/knowledge_app.dart';
import 'package:day_2/101/button_learn.dart';
import 'package:day_2/101/icon_learn.dart';
import 'package:day_2/101/indicator_learn.dart';
import 'package:flutter/material.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController();
  int _currentPageIndex = 0;

  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView(
        onPageChanged: _updatePageIndex,
        controller: _pageController,
        children: const [ButtonLearn(), KnowledgeApp(), KnowledgeApp2()],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              _currentPageIndex.toString(),
              style: TextStyle(color: Colors.red),
            ),
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(duration: _durationTime.durationLow, curve: Curves.easeInOutCubicEmphasized);
            },
            child: const Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(duration: _durationTime.durationLow, curve: Curves.easeOutSine);
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}

class _durationTime {
  static const durationLow = Duration(seconds: 1);
}
