import 'package:day_2/303/feed_view.dart';
import 'package:flutter/material.dart';

class TabBarAdvance extends StatefulWidget {
  const TabBarAdvance({Key? key}) : super(key: key);

  @override
  State<TabBarAdvance> createState() => _TabBarAdvance();
}

class _TabBarAdvance extends State<TabBarAdvance>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabView.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabView.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(0);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),
          child: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.green,
              controller: _tabController,
              tabs: _MyTabView.values
                  .map((e) => Tab(
                        text: e.name,
                      ))
                  .toList()),
        ),
        appBar: AppBar(),
        body: TabBarView(
          controller: _tabController,
          children: [
            const FeedView(),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}

enum _MyTabView { home, favorite, subscribe, setting }
