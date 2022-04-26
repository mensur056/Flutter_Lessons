class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel2 {
  int userId;
  int id;
  String title;
  String body;

  PostModel2(this.title, this.body, this.id, this.userId);
}

class PostModel3 {
  final int userId;
  final int id;
  final String body;
  final String title;

  PostModel3(this.userId, this.id, this.body, this.title);
}

class PostModel4 {
  final String body;
  final String title;
  final int id;
  final int userId;

  PostModel4({required this.body, required this.title, required this.id, required this.userId});
}

class PostModel8 {
  final String? body;
  final String? title;
  final int? userId;
  final int? id;

  PostModel8({this.body, this.title, this.userId, this.id});
}
