import 'dart:io';

import 'package:day_2/202/service/post_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({Key? key}) : super(key: key);

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
  bool _isLoading = false;
  String? name;

  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
  final TextEditingController _titleEditingController = TextEditingController();
  final TextEditingController _bodyEditingController = TextEditingController();
  final TextEditingController _userIdEditingController =
      TextEditingController();
  @override
  void initState() {
    super.initState();

    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemService(PostModel postModel) async {
    changeLoading();
    final response = await _dio.post('posts', data: postModel);
    if (response.statusCode == HttpStatus.created) {
      name = 'basarili';
    }
    changeLoading();
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
        body: Column(
          children: [
            TextField(
              controller: _titleEditingController,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(labelText: 'title'),
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Body'),
              textInputAction: TextInputAction.next,
              controller: _bodyEditingController,
            ),
            TextField(
                controller: _userIdEditingController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'UserId')),
            TextButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        if (_titleEditingController.text.isNotEmpty &&
                            _bodyEditingController.text.isNotEmpty &&
                            _userIdEditingController.text.isNotEmpty) {
                          final model = PostModel(
                              body: _bodyEditingController.text,
                              title: _titleEditingController.text,
                              userId:
                                  int.tryParse(_userIdEditingController.text));
                          _addItemService(model);
                        }
                      },
                child: const Text('Send'))
          ],
        ));
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
