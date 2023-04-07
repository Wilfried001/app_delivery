import 'package:app_delivery/config/config.dart';
import 'package:app_delivery/config/function.dart';
import 'package:app_delivery/views/details-livraison.dart';
import 'package:flutter/material.dart';

class WidgetLivraisonEnCour extends StatelessWidget {
  const WidgetLivraisonEnCour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 400,
      decoration: BoxDecoration(
        color: Config.colors.whithColor,
        boxShadow: [
          BoxShadow(
            color: Config.colors.backgroundTextField,
            offset: const Offset(0.0, 0.0),
            blurRadius: 15,
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dindji severin wilfried",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Config.colors.primaryColor,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Colors.amber[900],
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "En Cour",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[900],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Text(
              "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire ",
              style: TextStyle(
                color: Config.colors.textTextField,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Config.colors.backgroundTextField,
                      ),
                      child: Text(
                        'Yopougon',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Config.colors.backgroundTextField,
                      ),
                      child: Text(
                        '1500 FCFA',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Config.colors.primaryColor,
                      ),
                      child: Icon(
                        Icons.phone,
                        color: Config.colors.whithColor,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Config.colors.primaryColor,
                      ),
                      child: Icon(
                        Icons.send,
                        color: Config.colors.whithColor,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        route(context, const DetailsLivraison());
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Config.colors.primaryColor,
                        ),
                        child: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Config.colors.whithColor,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
