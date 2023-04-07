import 'dart:async';
import 'package:app_delivery/config/function.dart';
import 'package:flutter/material.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget(
      {super.key, this.time = 2, required this.child, required this.nextPage});
  final int time;
  final Widget child, nextPage;

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: time), () {
      route(context, nextPage, close: true);
    });
    return child;
  }
}
