import 'package:day_2/303/lotti_learn.dart';
import 'package:day_2/product/global/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeDataNotifer())
    ],
    builder: (context, child) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Learning',
        theme: context.watch<ThemeDataNotifer>().currentTheme,
        // ThemeData.light().copyWith(
        //     progressIndicatorTheme:
        //         const ProgressIndicatorThemeData(color: Colors.white),
        //     appBarTheme: const AppBarTheme(
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.horizontal(
        //           left: Radius.circular(30),
        //           right: Radius.circular(30),
        //         )),
        //         elevation: 0,
        //         color: Colors.purple,
        //         systemOverlayStyle: SystemUiOverlayStyle.light)),
        home: const LottiLearn());
  }
}
