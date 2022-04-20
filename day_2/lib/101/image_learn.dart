import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: 400,
            child: Image.asset(
              ImageItems().imageName,
            ),
          ),
          Image.network(
              'https://toppng.com/uploads/preview/spider-man-png-clipart-spiderman-11563069948whuzsyplwv.png')
        ],
      ),
    );
  }
}

class ImageItems {
  final String imageName = 'assets/images/im_insta.png';
}
