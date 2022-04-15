import 'package:flutter/material.dart';

ThemeData green = ThemeData(
  buttonColor: Colors.green.shade300,
  primaryColor: Colors.green,
  scaffoldBackgroundColor: Colors.green,
);
ThemeData red = ThemeData(
  buttonColor: Colors.red.shade300,
  primaryColor: Colors.red,
  scaffoldBackgroundColor: Colors.red,
);

class ThemeColorData with ChangeNotifier {
  bool _isGreen = true;

  ThemeData get themeColor {
    return _isGreen ? green : red;
  }

  void changeTheme() {
    _isGreen = !_isGreen;
    notifyListeners();
  }
}
