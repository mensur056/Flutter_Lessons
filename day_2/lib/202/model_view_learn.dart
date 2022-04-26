import 'package:day_2/202/model_learn.dart';
import 'package:flutter/material.dart';

class ModelViewLearn extends StatefulWidget {
  const ModelViewLearn({Key? key}) : super(key: key);

  @override
  State<ModelViewLearn> createState() => _ModelViewLearnState();
}

class _ModelViewLearnState extends State<ModelViewLearn> {
  @override
  PostModel8 user9 = PostModel8();

  void initState() {
    super.initState();
    final user1 = PostModel();
    user1.body = "hi";
    final user2 = PostModel2('hello', 'Yes', 3, 2);
    user2.body = 'a';
    final user3 = PostModel3(3, 4, 'b', 'w');
    final user4 = PostModel4(body: 'body', title: 's', id: 2, userId: 5);

    final user8 = PostModel8(title: 'abba');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = PostModel8(title: 'click');
          });
        },
      ),
      appBar: AppBar(
        title: Text(user9.title ?? 'not have a data'),
      ),
    );
  }
}
