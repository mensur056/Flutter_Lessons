import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            shadowColor: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Theme.of(context).colorScheme.error,
            child: const SizedBox(
              height: 100,
              width: 100,
            ),
          ),
          const _CustomCard(
            child: SizedBox(
              height: 100,
              width: 300,
            ),
          )
        ],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  final Widget child;

  const _CustomCard({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).colorScheme.primary,
        shape: const StadiumBorder(),
        child: child);
  }
}
