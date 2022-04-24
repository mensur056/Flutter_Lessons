import 'package:flutter/material.dart';

class ListViewLearnApp extends StatefulWidget {
  const ListViewLearnApp({Key? key}) : super(key: key);

  @override
  State<ListViewLearnApp> createState() => _ListViewLearnAppState();
}

class _ListViewLearnAppState extends State<ListViewLearnApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final int price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}
