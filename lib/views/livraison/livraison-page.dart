import 'package:app_delivery/config/config.dart';
import 'package:app_delivery/config/function.dart';
import 'package:app_delivery/views/livraison/livraison-effectuer.dart';
import 'package:app_delivery/views/livraison/livraison-en-cour.dart';
import 'package:app_delivery/widgets/cart_livraison_en_cour/cart_livraison_en_cour.dart';
import 'package:app_delivery/widgets/notification.dart';
import 'package:app_delivery/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LivraisonPage extends StatefulWidget {
  const LivraisonPage({super.key});

  @override
  State<LivraisonPage> createState() => _LivraisonPageState();
}

class _LivraisonPageState extends State<LivraisonPage> {
  int _selectedTag = 0;

  void changeTab(int index) {
    setState(() {
      _selectedTag = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15, top: 35),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Config.colors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.bottomSheet(Notifications());
                            },
                            icon: Icon(
                              Icons.notifications,
                              size: 30,
                              color: Config.colors.whithColor,
                            ),
                          ),
                          Positioned(
                            right: 3,
                            top: 2,
                            child: Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.red[300],
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: Config.colors.whithColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Config.colors.primaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.filter_alt_outlined,
                      color: Config.colors.whithColor,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Config.colors.backgroundTextField,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 15,
                          spreadRadius: 0,
                        ),
                      ],
                      color: Config.colors.whithColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Trier",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down_sharp)
                      ],
                    ),
                  ),
                  CustomTabView(
                    index: _selectedTag,
                    changeTab: changeTab,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: width(context),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Config.colors.backgroundTextField,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 15,
                      spreadRadius: 0,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Config.colors.whithColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _selectedTag == 0
                          ? Text(
                              "Livraison en cours",
                              style: TextStyle(
                                color: Config.colors.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                          : Text(
                              "Livraison effectuer",
                              style: TextStyle(
                                color: Config.colors.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                      SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: _selectedTag == 0
                              ? LivraisonEnCour()
                              : LivraisonEffectuer(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomTabView extends StatefulWidget {
  final Function(int) changeTab;
  final int index;
  const CustomTabView(
      {super.key, required this.changeTab, required this.index});

  @override
  State<CustomTabView> createState() => _CustomTabViewState();
}

class _CustomTabViewState extends State<CustomTabView> {
  final List<String> _tags = ["En cour", "Effectuer"];

  Widget _buildTags(int index) {
    return GestureDetector(
      onTap: () {
        widget.changeTab(index);
      },
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Config.colors.backgroundTextField,
                offset: const Offset(0.0, 0.0),
                blurRadius: 15,
                spreadRadius: 0,
              ),
            ],
            color: widget.index == index
                ? Config.colors.secondaryColor
                : Config.colors.whithColor,
          ),
          child: Text(
            _tags[index],
            style: TextStyle(
              color: Config.colors.primaryColor,
              fontWeight: widget.index == index ? FontWeight.bold : null,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _tags
          .asMap()
          .entries
          .map((MapEntry map) => _buildTags(map.key))
          .toList(),
    );
  }
}
