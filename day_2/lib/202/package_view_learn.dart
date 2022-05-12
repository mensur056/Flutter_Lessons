import 'package:day_2/202/launch_mixin.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageViewLearn extends StatefulWidget {
  const PackageViewLearn({Key? key}) : super(key: key);

  @override
  State<PackageViewLearn> createState() => _PackageViewLearnState();
}

class _PackageViewLearnState extends State<PackageViewLearn> with LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: FloatingActionButton(
          onPressed: () {
            launchURL('https://pub.dev/packages/url_launcher');
          },
        ));
  }
}
