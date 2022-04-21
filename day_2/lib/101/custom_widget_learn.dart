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
            CustomButton(
              title: title,
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                child: CustomButton(
                  title: title,
                  onPressed: () {},
                ),
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
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: _ColorsUtility().redColor,
      ),
      onPressed: onPressed,
      child: Padding(
        padding: _PaddingUtility().padding,
        child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: _ColorsUtility().whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class _PaddingUtility {
  final EdgeInsets padding = const EdgeInsets.all(16);
  final EdgeInsets padding2x = const EdgeInsets.all(32);
}
