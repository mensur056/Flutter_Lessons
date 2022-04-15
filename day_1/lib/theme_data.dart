import 'package:flutter/material.dart';

ThemeData green = ThemeData(
    primaryColor: Colors.green,
    buttonColor: Colors.green.shade300,
    scaffoldBackgroundColor: Colors.green.shade100);
ThemeData red = ThemeData(
    primaryColor: Colors.red,
    buttonColor: Colors.red.shade300,
    scaffoldBackgroundColor: Colors.red.shade100);

class ThemeColorData with ChangeNotifier {
  bool _isGreen = true;

  bool get isGreen => _isGreen;

  ThemeData get themeColor {
    return _isGreen ? green : red;
  }

  void changeTheme() {
    _isGreen = !_isGreen;
    notifyListeners();
  }
}
