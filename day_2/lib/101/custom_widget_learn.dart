import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({Key? key}) : super(key: key);
  final String title = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            primary: ColorsUtility().redColor,
          ),
          onPressed: () {},
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                color: ColorsUtility().whiteColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}
