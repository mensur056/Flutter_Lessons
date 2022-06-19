import 'package:day_2/202/service/post_model.dart';
import 'package:day_2/202/service/post_service.dart';
import 'package:flutter/material.dart';

class FeedView extends StatefulWidget {
  const FeedView({Key? key}) : super(key: key);

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView>
    with AutomaticKeepAliveClientMixin {
  final PostService _postService = PostService();
  late final Future<List<PostModel>?> _itemFuture;
  @override
  void initState() {
    super.initState();
    _itemFuture = _postService.fetchPostModelAdvance();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {});
      }),
      body: FutureBuilder<List<PostModel>?>(
        future: _itemFuture,
        builder: (BuildContext context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Placeholder();

            case ConnectionState.waiting:

            case ConnectionState.active:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasData) {
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        title: Text(snapshot.data?[index].body ?? ''),
                      ),
                    );
                  },
                );
              } else {
                return const Placeholder();
              }
          }
        },
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
