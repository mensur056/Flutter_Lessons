import 'dart:convert';

import 'package:day_2/202/cache/shared_manager.dart';

import '../shared_learn_cache.dart';

class UserCacheManager {
  final SharedManager sharedManager;

  UserCacheManager(
    this.sharedManager,
  );

  void saveItems(final List<User> items) {
    final _items = items.map((element) => jsonEncode(element)).toList();
    sharedManager.saveStringListItems(SharedKeys.users, _items);
  }

  List<User>? getItems() {
    final itmesString = sharedManager.getStrings(SharedKeys.users);
    if (itmesString?.isNotEmpty ?? false) {
      return itmesString!.map((e) {
        final jsonObject = jsonDecode(e);
        return User('name', 'description', 'url');
      }).toList();
    }
    return null;
  }
}
