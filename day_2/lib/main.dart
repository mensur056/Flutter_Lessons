import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '202/sheet_leran.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Learning',
        theme: ThemeData.light().copyWith(
            progressIndicatorTheme:
                const ProgressIndicatorThemeData(color: Colors.white),
            appBarTheme: const AppBarTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(30),
                  right: Radius.circular(30),
                )),
                elevation: 0,
                color: Colors.purple,
                systemOverlayStyle: SystemUiOverlayStyle.light)),
        home: const SheetLearn());
  }
}
