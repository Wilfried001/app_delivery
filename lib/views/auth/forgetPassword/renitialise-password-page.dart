import 'package:app_delivery/config/config.dart';
import 'package:app_delivery/config/function.dart';
import 'package:app_delivery/views/auth/login-page.dart';
import 'package:app_delivery/widgets/button.dart';
import 'package:app_delivery/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RenitialisePassword extends StatelessWidget {
  const RenitialisePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: height(context) * 0.8,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'LOGO',
                  style: TextStyle(
                    fontSize: 60,
                    color: Config.colors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Renitialisation de mot de passe',
                  style: TextStyle(
                    fontSize: 18,
                    color: Config.colors.primaryColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Column(
                  children: [
                    CtextField(
                      hint: 'Nouveau mot de passe',
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Config.colors.textTextField,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_outlined,
                        color: Config.colors.textTextField,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CtextField(
                      hint: 'Confirmer mot de passe',
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Config.colors.textTextField,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_outlined,
                        color: Config.colors.textTextField,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                CButton(
                  title: "Confirmer",
                  onPressed: () {
                    Get.off(
                      LoginPage(),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
