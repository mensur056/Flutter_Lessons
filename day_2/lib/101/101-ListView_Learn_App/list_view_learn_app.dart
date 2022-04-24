
import 'package:flutter/material.dart';

class ListViewLearnApp extends StatefulWidget {
  const ListViewLearnApp({Key? key}) : super(key: key);

  @override
  State<ListViewLearnApp> createState() => _ListViewLearnAppState();
}

class _ListViewLearnAppState extends State<ListViewLearnApp> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(imagePath: 'assets/images/im_test.jpg', title: 'Abstract Art1', price: 8.5),
      CollectionModel(imagePath: 'assets/images/im_test.jpg', title: 'Abstract Art2', price: 8.5),
      CollectionModel(imagePath: 'assets/images/im_test.jpg', title: 'Abstract Art3', price: 8.5),
      CollectionModel(imagePath: 'assets/images/im_test.jpg', title: 'Abstract Art4', price: 8.5)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: SizedBox(
                height: 300,
                child: Column(
                  children: [
                    Image.asset(_items[index].imagePath),
                    Row(
                      children: [Text(_items[index].title), const Text('{_items[index].price}')],
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: _items.length,
        ));
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}
