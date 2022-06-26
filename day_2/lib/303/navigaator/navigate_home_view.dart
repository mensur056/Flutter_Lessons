import 'package:day_2/product/mixin/navigator_mixin.dart';
import 'package:day_2/product/navigator/navigater_routes.dart';
import 'package:flutter/material.dart';

class NavigateHomeView extends StatefulWidget {
  const NavigateHomeView({Key? key}) : super(key: key);

  @override
  State<NavigateHomeView> createState() => _NavigateHomeViewState();
}

class _NavigateHomeViewState extends State<NavigateHomeView>
    with NavigatorMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // await NavigatorManager.instance
          //     .pushToPage(NavigatorRoutesItems.detail, arguments: 'aasd');
          router.pushToPage(NavigatorRoutesItems.detail, arguments: 'Mansur');
        },
        child: const Icon(Icons.fork_right),
      ),
    );
  }
}
