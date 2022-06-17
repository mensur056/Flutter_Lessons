import 'package:flutter/material.dart';

class LoadingButton extends StatefulWidget {
  const LoadingButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final Future<void> Function() onPressed;
  @override
  State<LoadingButton> createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  bool _isLoading = false;

  void changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          changeLoading();
          await widget.onPressed.call();
          changeLoading();
        },
        child: _isLoading
            ? const CircularProgressIndicator()
            : Text(widget.title));
  }
}
