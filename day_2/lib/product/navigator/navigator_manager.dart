import 'package:day_2/product/navigator/navigater_routes.dart';
import 'package:flutter/cupertino.dart';

class NavigatorManager {
  NavigatorManager._();
  static NavigatorManager instance = NavigatorManager._();
  final GlobalKey<NavigatorState> _navigatorGlobalKey = GlobalKey();

  GlobalKey<NavigatorState> get navigatorGlobalKey => _navigatorGlobalKey;

  Future<void> pushToPage(NavigatorRoutesItems route,
      {Object? arguments}) async {
    await _navigatorGlobalKey.currentState
        ?.pushNamed(route.withParaf, arguments: arguments);
  }
}
