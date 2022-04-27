import 'dart:io';

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
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchPostModel();
  }

  void changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostModel() async {
    changeLoading();
    final response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;
      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
      changeLoading();
    }

    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mansur'),
        actions: [_isLoading ? const CircularProgressIndicator() : const SizedBox.shrink()],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const Text('data');
        },
        itemCount: _items?.length ?? 0,
      ),
    );
  }
}
