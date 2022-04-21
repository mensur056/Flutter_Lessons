import 'package:day_2/101-KnowledgeApp/knowledge_app.dart';
import 'package:day_2/101/app_bar_learn.dart';
import 'package:day_2/101/button_learn.dart';
import 'package:day_2/101/card_learn.dart';
import 'package:day_2/101/custom_widget_learn.dart';
import 'package:day_2/101/icon_learn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '101/image_learn.dart';

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
          appBarTheme: const AppBarTheme(
              elevation: 0,
              color: Colors.transparent,
              systemOverlayStyle: SystemUiOverlayStyle.light)),
      home: const CustomWidgetLearn(),
    );
  }
}
