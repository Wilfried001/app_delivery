import 'package:app_delivery/config/config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 10,
          ),
          Text(
            'LOGO',
            style: TextStyle(
              fontSize: 60,
              color: Config.colors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Chargement...",
            style: TextStyle(color: Config.colors.grayColor),
          ),
        ],
      ),
    );
  }
}
