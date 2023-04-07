import 'package:app_delivery/config/config.dart';
import 'package:app_delivery/config/function.dart';
import 'package:app_delivery/views/livraison/livraison-page.dart';
import 'package:app_delivery/widgets/button.dart';
import 'package:app_delivery/widgets/textField.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15, top: 25),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Config.colors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {
                          route(context, const LivraisonPage());
                        },
                        icon: Icon(Icons.arrow_back,
                            color: Config.colors.whithColor),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    flex: 5,
                    child: CtextField(
                      raduis: 10,
                      hint: "Recherches...",
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Config.colors.primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 0, right: 0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8.0,
                        left: 15,
                        right: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Direction du guide",
                            style: TextStyle(
                                fontSize: 16,
                                color: Config.colors.whithColor,
                                fontWeight: FontWeight.bold),
                          ),
                          CButton(
                            width: 150,
                            height: 50,
                            title: "Nouvelle direction",
                            sizeTitle: 12,
                            color: Config.colors.secondaryColor,
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Config.colors.whithColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(Config.asset.profil),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 180,
                                height: 80,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Yopougon",
                                      style: TextStyle(
                                          color:
                                              Config.colors.backgroundTextField,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Dindji Severin Wilfried",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "15 000 FCFA",
                                      style: TextStyle(
                                          color:
                                              Config.colors.backgroundTextField,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Config.colors.primaryColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(
                                  Icons.phone,
                                  color: Config.colors.whithColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
