import 'package:day_2/303/lotti_learn.dart';
import 'package:day_2/303/navigaator/navigate_home_detail.dart';
import 'package:day_2/303/navigaator/navigate_home_view.dart';

class NavigatorRoutes {
  static const String parath = '/';
  final items = {
    parath: (context) => const LottiLearn(),
    NavigatorRoutesItems.home.withParaf: (context) => const NavigateHomeView(),
    NavigatorRoutesItems.detail.withParaf: (context) =>
        const NavigateHomeDetailView()
  };
}

enum NavigatorRoutesItems { init, home, detail }

extension NavigatorRoutesExtension on NavigatorRoutesItems {
  String get withParaf => '/$name';
}
