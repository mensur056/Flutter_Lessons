import 'package:flutter/material.dart';

class TabBarLearn extends StatefulWidget {
  const TabBarLearn({Key? key}) : super(key: key);

  @override
  State<TabBarLearn> createState() => _TabBarLearnState();
}

class _TabBarLearnState extends State<TabBarLearn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBody: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const BottomAppBar(
          notchMargin: 10,
          shape: CircularNotchedRectangle(),
          child: TabBar(
            tabs: [
              Tab(
                text: 'Page1',
              ),
              Tab(
                text: 'Page2',
              )
            ],
          ),
        ),
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Page1',
              ),
              Tab(
                text: 'Page2',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
