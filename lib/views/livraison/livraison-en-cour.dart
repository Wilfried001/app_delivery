import 'package:app_delivery/widgets/cart_livraison_en_cour/cart_livraison_en_cour.dart';
import 'package:flutter/material.dart';

class LivraisonEnCour extends StatelessWidget {
  const LivraisonEnCour({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        WidgetLivraisonEnCour(),
        SizedBox(
          height: 15,
        ),
        WidgetLivraisonEnCour(),
        SizedBox(
          height: 15,
        ),
        WidgetLivraisonEnCour(),
      ],
    );
  }
}
