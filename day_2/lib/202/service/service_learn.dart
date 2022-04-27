import 'package:day_2/202/service/post_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({Key? key}) : super(key: key);

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items;

  @override
  void initState() {
    super.initState();
    fetchPostModel();
  }

  Future<void> fetchPostModel() async {
    final response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const Text('data');
        },
        itemCount: _items?.length ?? 0,
      ),
    );
  }
}
