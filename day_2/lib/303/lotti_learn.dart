import 'package:day_2/product/constant/duration_items.dart';
import 'package:day_2/product/constant/lottie_items.dart';
import 'package:day_2/product/global/theme_data.dart';
import 'package:day_2/product/navigator/navigater_routes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LottiLearn extends StatefulWidget {
  const LottiLearn({Key? key}) : super(key: key);

  @override
  State<LottiLearn> createState() => _LottiLearnState();
}

class _LottiLearnState extends State<LottiLearn> with TickerProviderStateMixin {
  late AnimationController controller;
  bool isLight = false;
  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: DurationItems.durationNormal());
    super.initState();
    navigateToHome();
  }

  Future<void> navigateToHome() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.of(context)
        .pushReplacementNamed(NavigatorRoutesItems.home.withParaf);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: () {
                controller.animateTo(isLight ? 0.5 : 1);
                context.read<ThemeDataNotifer>().changeTheme();
                isLight = !isLight;
              },
              child: Lottie.asset(LottieItems.themeChange.lottiPath,
                  repeat: false, controller: controller))
        ],
      ),
      body: Lottie.network(
        'https://assets2.lottiefiles.com/packages/lf20_p8bfn5to.json',
      ),
    );
  }
}
