import 'package:day_2/202/package_view_learn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        theme: ThemeData.dark().copyWith(
            progressIndicatorTheme:
                const ProgressIndicatorThemeData(color: Colors.white),
            appBarTheme: const AppBarTheme(
                elevation: 0,
                color: Colors.transparent,
                systemOverlayStyle: SystemUiOverlayStyle.light)),
        home: const PackageViewLearn());
  }
}
