import 'package:app_delivery/config/config.dart';
import 'package:app_delivery/widgets/button.dart';
import 'package:flutter/material.dart';

class seeAllNotifications extends StatelessWidget {
  const seeAllNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notifications",
          style: TextStyle(
              color: Config.colors.textColor,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Config.colors.whithColor,
        iconTheme: IconThemeData(color: Config.colors.textColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
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
        ),
      ),
    );
  }
}
