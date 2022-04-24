import 'package:flutter/material.dart';

class KnowledgeApp2 extends StatelessWidget {
  const KnowledgeApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  bottom: 25,
                  child: Image.network(
                    ImageName().imageName,
                  ),
                ),
                const Positioned(
                  width: 200,
                  bottom: 0,
                  height: 50,
                  child: Card(
                    color: Colors.green,
                  ),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }
}

class ImageName {
  final String imageName =
      'https://static.scientificamerican.com/sciam/cache/file/4F73FD83-3377-42FC-915AD56BD66159FE_source.jpg';
}
