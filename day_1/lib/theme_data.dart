import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData blue = ThemeData(
    primaryColor: Colors.blue,
    buttonColor: Colors.blue.shade100,
    scaffoldBackgroundColor: Colors.blue.shade300);

ThemeData red = ThemeData(
    primaryColor: Colors.red,
    buttonColor: Colors.red.shade100,
    scaffoldBackgroundColor: Colors.red.shade300);

class ThemeColorData with ChangeNotifier {
  SharedPreferences? _sharedPref;

  Future<void> createSharedPref() async {
    _sharedPref = await SharedPreferences.getInstance();
  }

  bool _isBlue = true;

  bool get isBlue => _isBlue;

  ThemeData get themeColor {
    return _isBlue ? blue : red;
  }

  void changeThemeColor() {
    _isBlue = !_isBlue;
    saveToSharedPref(_isBlue);
    notifyListeners();
  }

  void saveToSharedPref(bool value) {
    _sharedPref!.setBool('themeData', value);
  }

  void loadThemeFromSharedPref() async {
    await createSharedPref();
    _isBlue = _sharedPref!.getBool('themeData') ?? true;
  }
}
