import 'package:app_delivery/config/config.dart';
import 'package:app_delivery/config/function.dart';
import 'package:app_delivery/views/auth/forgetPassword/recuperation-password-page.dart';
import 'package:app_delivery/views/auth/forgetPassword/renitialise-password-page.dart';
import 'package:app_delivery/views/home-page.dart';
import 'package:app_delivery/widgets/button.dart';
import 'package:app_delivery/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                  'Connecter vous a votre compte',
                  style: TextStyle(
                    fontSize: 18,
                    color: Config.colors.primaryColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Column(
                  children: [
                    CtextField(
                      hint: 'Adresse email',
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Config.colors.textTextField,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CtextField(
                      hint: 'Mot de passe',
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
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            route(context, RecuperePassword());
                          },
                          child: Text(
                            'Mot de passe oublié?',
                            style: TextStyle(
                              fontSize: 16,
                              color: Config.colors.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                CButton(
                  title: "Connexion",
                  onPressed: () {
                    Get.off(
                      HomePage(),
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
