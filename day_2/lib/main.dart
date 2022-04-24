import 'package:day_2/101-Color_Demo_View/101_color.demo_view.dart';
import 'package:day_2/101-Color_Demo_View/color_life_cycle_view.dart';
import 'package:day_2/101-KnowledgeApp-2/knowledge_app_2.dart';
import 'package:day_2/101-KnowledgeApp/knowledge_app.dart';
import 'package:day_2/101/app_bar_learn.dart';
import 'package:day_2/101/button_learn.dart';
import 'package:day_2/101/card_learn.dart';
import 'package:day_2/101/column_row_leran.dart';
import 'package:day_2/101/custom_widget_learn.dart';
import 'package:day_2/101/icon_learn.dart';
import 'package:day_2/101/indicator_learn.dart';
import 'package:day_2/101/list_tile%20_learn.dart';
import 'package:day_2/101/list_view_learn.dart';
import 'package:day_2/101/page_view.dart';
import 'package:day_2/101/stack_learn.dart';
import 'package:day_2/101/stateful_life_cycle.dart';
import 'package:day_2/101/stateful_widget_learn.dart';
import 'package:day_2/101/text_field_learn.dart';
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
            progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
            appBarTheme: const AppBarTheme(
                elevation: 0, color: Colors.transparent, systemOverlayStyle: SystemUiOverlayStyle.light)),
        home: const ListViewLearn());
  }
}
