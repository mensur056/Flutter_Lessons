import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            shape: const StadiumBorder(),
            child: ListTile(
              onTap: () {},
              leading: Icon(
                Icons.favorite,
                color: Theme.of(context).errorColor,
              ),
              title: const Text('My favorite song'),
              subtitle: const Text('What do you want to listen'),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_right),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
