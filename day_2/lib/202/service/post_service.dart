import 'dart:io';

import 'package:day_2/202/service/post_model.dart';
import 'package:dio/dio.dart';

class PostService {
  final Dio _dio;

  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  Future<bool> addItemService(PostModel postModel) async {
    final response =
        await _dio.post(_PostServicePaths.posts.name, data: postModel);
    return response.statusCode == HttpStatus.created;
  }

  Future<List<PostModel>?> fetchPostModelAdvance() async {
    try {
      final response = await _dio.get(_PostServicePaths.posts.name);
      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;
        if (_datas is List) {
          return _datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } on DioError catch (error) {
      print(error.message);
    }
    return null;
  }
}

enum _PostServicePaths { posts, comments }
