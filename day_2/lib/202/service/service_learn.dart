import 'dart:io';

import 'package:day_2/202/service/post_model.dart';
import 'package:day_2/202/service/post_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({Key? key}) : super(key: key);

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items;
  String? name;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
  late final PostService _postService;

  @override
  void initState() {
    super.initState();
    fetchPostModelAdvance();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    name = 'Mansur';
    _postService = PostService();
  }

  void changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostModelAdvance() async {
    changeLoading();
    _items = await _postService.fetchPostModelAdvance();

    changeLoading();
  }

  Future<void> fetchPostModel() async {
    changeLoading();
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;
      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
      changeLoading();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mansur'),
        actions: [
          _isLoading
              ? const CircularProgressIndicator()
              : const SizedBox.shrink()
        ],
      ),
      body: ListView.builder(
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return _PostCard(
            model: _items?[index],
          );
        },
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required PostModel? model,
  })  : _model = model,
        super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}
