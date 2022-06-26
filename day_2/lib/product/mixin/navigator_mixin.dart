import 'package:day_2/product/navigator/navigator_manager.dart';
import 'package:flutter/material.dart';

mixin NavigatorMixin<T extends StatefulWidget> on State<T> {
  NavigatorManager get router => NavigatorManager.instance;
}
