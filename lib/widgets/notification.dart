import 'package:app_delivery/config/config.dart';
import 'package:app_delivery/config/function.dart';
import 'package:app_delivery/views/all-notifications.dart';
import 'package:app_delivery/widgets/button.dart';
import 'package:app_delivery/widgets/cart_livraison_en_cour/cart_livraison_en_cour.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: width(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        color: Config.colors.whithColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "La derniere demande de livraison",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Config.colors.primaryColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.close,
                    size: 35,
                    color: Config.colors.primaryColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
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
                                CButton(
                                  sideWidth: 4,
                                  sideColor: Config.colors.primaryColor,
                                  titleColor: Config.colors.primaryColor,
                                  color: Config.colors.whithColor,
                                  width: 120,
                                  height: 45,
                                  title: 'Refuser',
                                  sizeTitle: 12,
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CButton(
                                  width: 120,
                                  height: 45,
                                  title: 'Accepter',
                                  sizeTitle: 12,
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Config.colors.primaryColor,
                              ),
                              child: Icon(
                                Icons.remove_red_eye,
                                color: Config.colors.whithColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    route(context, seeAllNotifications());
                  },
                  child: Text(
                    "Voir Tous",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
