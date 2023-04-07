import 'package:app_delivery/config/config.dart';
import 'package:flutter/material.dart';

class CtextField extends StatelessWidget {
  final Color? backgroundColor;
  final String hint;
  final double raduis;
  final Widget? prefixIcon, suffixIcon;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  const CtextField(
      {super.key,
      this.backgroundColor,
      required this.hint,
      this.raduis = 15.0,
      this.prefixIcon,
      this.textInputType,
      this.controller,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        filled: true,
        hintText: hint,
        hintStyle: TextStyle(
          color: Config.colors.textTextField,
          fontSize: 16,
        ),
        fillColor: backgroundColor ?? Config.colors.backgroundTextField,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(raduis),
        ),
      ),
    );
  }
}
