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
    _items = CollectionItem().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: SizedBox(
                height: 300,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Image.asset(_items[index].imagePath),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text(_items[index].title), Text('${_items[index].price}')],
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: _items.length,
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}

class CollectionItem {
  late final List<CollectionModel> items;

  CollectionItem() {
    items = [
      CollectionModel(imagePath: 'assets/images/im_test.jpg', title: 'Abstract Art1', price: 8.5),
      CollectionModel(imagePath: 'assets/images/im_test.jpg', title: 'Abstract Art2', price: 7.5),
      CollectionModel(imagePath: 'assets/images/im_test.jpg', title: 'Abstract Art3', price: 9.5),
      CollectionModel(imagePath: 'assets/images/im_test.jpg', title: 'Abstract Art4', price: 3.8)
    ];
  }
}
