import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            height: 100,
            color: Colors.red,
          ),
          Container(
            height: 90,
            color: Colors.blue,
          ),
          Positioned(height: 50,width: 100,top: 10,left: 60,
            child: Container(

              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
