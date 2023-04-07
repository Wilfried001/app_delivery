import 'package:flutter/material.dart';

class Config {
  static final colors = _Color();
  static final asset = _Asset();
}

class _Color {
  final primaryColor = Color(0xFF3F3D56);
  final secondaryColor = Color(0xFF00BFFF);
  final grayColor = Color(0xFFB1B1B1);
  final whithColor = Color(0xffFFFFFF);
  final textColor = Color(0xFF3F3D56);
  final secondaryTextColor = Color.fromARGB(176, 77, 76, 76);
  final backgroundTextField = Color.fromARGB(50, 63, 61, 86);
  final textTextField = Color.fromARGB(169, 63, 61, 86);
}

class _Asset {
  final deliverySlide1 = "assets/images/Crop_undraw_on_the_way_re_swjt.svg";
  final deliverySlide2 = "assets/images/Crop_undraw_on_the_way_re_swjt.svg";
  final deliverySlide3 = "assets/images/Crop_undraw_on_the_way_re_swjt.svg";
  final profil = "assets/images/profil.jpg";
}
