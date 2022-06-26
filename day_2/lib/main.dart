import 'package:day_2/303/mobx_image_picker/view/mobx_image_upload_view.dart';
import 'package:day_2/product/global/theme_data.dart';
import 'package:day_2/product/navigator/navigator_custom.dart';
import 'package:day_2/product/navigator/navigator_manager.dart';
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

class MyApp extends StatelessWidget with NavigatorCustom {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Learning',
      theme: ThemeData.light(),
      //context.watch<ThemeDataNotifer>().currentTheme,
      onGenerateRoute: onGeneratedRoute,
      navigatorKey: NavigatorManager.instance.navigatorGlobalKey,
      home: const MobxImageUpload(),
    );
  }
}
