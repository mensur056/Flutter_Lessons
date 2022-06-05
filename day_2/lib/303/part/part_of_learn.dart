import 'package:flutter/material.dart';
part 'part_of_appbar.dart';

class PartOfLearn extends StatelessWidget {
  const PartOfLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _PartOfAppBar(),
      body: Column(),
    );
  }
}
