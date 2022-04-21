import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({Key? key}) : super(key: key);
  final String title = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            CustomButton(title: title),
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                child: CustomButton(title: title),
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: ColorsUtility().redColor,
      ),
      onPressed: () {},
      child: Padding(
        padding: PaddingUtility().padding,
        child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: ColorsUtility().whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class PaddingUtility {
  final EdgeInsets padding = const EdgeInsets.all(16);
  final EdgeInsets padding2x = const EdgeInsets.all(32);
}
