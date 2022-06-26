import 'package:day_2/303/lotti_learn.dart';
import 'package:day_2/303/navigaator/navigate_home_detail.dart';
import 'package:day_2/303/navigaator/navigate_home_view.dart';
import 'package:day_2/main.dart';
import 'package:day_2/product/navigator/navigater_routes.dart';
import 'package:flutter/material.dart';

mixin NavigatorCustom<T extends MyApp> on Widget {
  Route<dynamic>? onGeneratedRoute(RouteSettings routeSettings) {
    if (routeSettings.name?.isEmpty ?? true) {
      return _navigateToNormal(const LottiLearn());
    }
    final _routes = routeSettings.name == NavigatorRoutes.parath
        ? NavigatorRoutesItems.init
        : NavigatorRoutesItems.values.byName(routeSettings.name!.substring(1));
    switch (_routes) {
      case NavigatorRoutesItems.init:
        return _navigateToNormal(const LottiLearn());

      case NavigatorRoutesItems.home:
        return _navigateToNormal(const NavigateHomeView());
      case NavigatorRoutesItems.detail:
        final _id = routeSettings.arguments;
        return _navigateToNormal(
            NavigateHomeDetailView(
              id: _id is String ? _id : null,
            ),
            isFullScreenDialog: true);
    }
  }

  Route<dynamic>? _navigateToNormal(Widget child, {bool? isFullScreenDialog}) {
    return MaterialPageRoute(
      fullscreenDialog: isFullScreenDialog ?? false,
      builder: (context) {
        return child;
      },
    );
  }
}
