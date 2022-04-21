import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CenterCircularProgress()],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        backgroundColor: ColorsCircularProgress().progressBackgroundColor,
        color: ColorsCircularProgress().progressPrimaryColor,
      ),
    );
  }
}

class ColorsCircularProgress {
  final Color progressBackgroundColor = Colors.white;
  final Color progressPrimaryColor = Colors.green;
}
