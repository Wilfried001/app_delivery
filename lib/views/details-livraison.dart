import 'package:app_delivery/config/config.dart';
import 'package:flutter/material.dart';

class DetailsLivraison extends StatelessWidget {
  const DetailsLivraison({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Détails",
          style: TextStyle(
              color: Config.colors.textColor,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Config.colors.whithColor,
        iconTheme: IconThemeData(color: Config.colors.textColor),
      ),
    );
  }
}
