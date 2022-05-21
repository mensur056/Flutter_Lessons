import 'package:day_2/202/cache/shared_exception.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum SharedKeys { counter, users }

class SharedManager {
  SharedPreferences? preferences;

  SharedManager();

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  void checkPrefences() {
    if (preferences == null) {
      throw SharedNotInitialize();
    }
  }

  Future<void> saveString(SharedKeys key, String value) async {
    checkPrefences();
    await preferences?.setString(key.name, value);
  }

  Future<void> saveStringListItems(SharedKeys key, List<String> value) async {
    checkPrefences();
    await preferences?.setStringList(key.name, value);
  }

  List<String>? getStrings(
    SharedKeys key,
  ) {
    checkPrefences();
    return preferences?.getStringList(
      key.name,
    );
  }

  String? getString(SharedKeys key) {
    checkPrefences();

    return preferences?.getString(key.name);
  }

  Future<bool> removeItem(SharedKeys key) async {
    checkPrefences();

    return (await preferences?.remove(key.name)) ?? false;
  }
}
