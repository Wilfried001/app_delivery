import 'package:app_delivery/widgets/cart_livraison_effectuer/cart_livraison_non_effectuer.dart';
import 'package:flutter/material.dart';

class LivraisonEffectuer extends StatelessWidget {
  const LivraisonEffectuer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        WidgetLivraisonEffectuer(),
        SizedBox(
          height: 15,
        ),
        WidgetLivraisonEffectuer(),
        SizedBox(
          height: 15,
        ),
        WidgetLivraisonEffectuer(),
        SizedBox(
          height: 15,
        ),
        WidgetLivraisonEffectuer(),
        SizedBox(
          height: 15,
        ),
        WidgetLivraisonEffectuer(),
        SizedBox(
          height: 15,
        ),
        WidgetLivraisonEffectuer(),
      ],
    );
  }
}
