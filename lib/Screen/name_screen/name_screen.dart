import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:pitarata_job/Screen/home/home.dart';
import 'package:pitarata_job/color/colors.dart';
import 'package:pitarata_job/widget/custom_text.dart';
import 'package:pitarata_job/widget/custom_text_field.dart';
import 'package:pitarata_job/widget/radius_button.dart';

import 'name_screen_1.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({super.key});

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: CustomText(
                fontWeight: FontWeight.normal,
                color: white,
                text: 'Login to your account',
                fontSize: 25,
                fontFamily: 'Viga'),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Lottie.asset('assets/login_screen.json'),
          ),
          CustomTextField(
            hintText: 'email address',
          ),
          CustomTextField(
            hintText: 'password',
          ),
          Align(
              alignment: Alignment.centerRight,
              child: CustomText(
                color: Colors.white54,
                fontWeight: FontWeight.normal,
                fontFamily: 'Comfortaa-VariableFont_wght',
                fontSize: 13,
                text: 'Reset my password',
              )),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: RadiusButton(
              text: 'LOGIN',
              width: 200,
              height: 60,
            ),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 400,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "I don't have an account.",
                            style: TextStyle(
                                color: font_green,
                                fontFamily: 'Comfortaa-VariableFont_wght'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NameScreenOne()),
                              );
                            },
                            child: Text(
                              "Create a new account",
                              style: TextStyle(
                                  color: font_green,
                                  fontFamily: 'Comfortaa-VariableFont_wght',
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      ),
                    ))),
          )
        ]),
      ),
    );
  }
}
