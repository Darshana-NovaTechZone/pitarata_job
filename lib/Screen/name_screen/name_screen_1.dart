import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:pitarata_job/Screen/name_screen/name_screen_2.dart';
import 'package:pitarata_job/color/colors.dart';
import 'package:pitarata_job/widget/custom_text.dart';
import 'package:pitarata_job/widget/custom_text_field.dart';
import 'package:pitarata_job/widget/radius_button.dart';

import 'name_screen.dart';

class NameScreenOne extends StatefulWidget {
  const NameScreenOne({super.key});

  @override
  State<NameScreenOne> createState() => _NameScreenOneState();
}

class _NameScreenOneState extends State<NameScreenOne> {
  TextEditingController name = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      alignment: Alignment.center,
                      child: CustomText(
                          fontWeight: FontWeight.normal,
                          color: white,
                          text: " Let's create your\n brand new account",
                          fontSize: 25,
                          fontFamily: 'Viga'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 3.7),
                    child: Lottie.asset('assets/create_new_account.json'),
                  ),
                  CustomTextField(
                    maxLength: 50,
                    keyInput: TextInputType.text,
                    controller: name,
                    hintText: 'enter your name',
                  ),
                  CustomTextField(
                    maxLength: 10,
                    keyInput: TextInputType.number,
                    controller: mobile,
                    hintText: 'enter your mobile number',
                  ),
                  Form(
                    autovalidateMode: AutovalidateMode.always,
                    child: CustomTextField(
                      maxLength: 50,
                      keyInput: TextInputType.emailAddress,
                      controller: email,
                      hintText: 'enter your email address',
                    ),
                  ),
                  CustomTextField(
                    maxLength: 20,
                    keyInput: TextInputType.visiblePassword,
                    controller: password,
                    hintText: 'password',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        if (name.text.isNotEmpty &&
                            mobile.text.isNotEmpty &&
                            email.text.isNotEmpty &&
                            password.text.isNotEmpty) {
                          if (email.text.contains("@") &&
                              email.text.contains(".")) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NameScreenTwo()));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("enter valid email ")));
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("required fill all ")),
                          );
                        }
                      },
                      child: RadiusButton(
                        color: font_green,
                        colortext: white,
                        text: 'CREATE MY ACCOUNT',
                        width: 230,
                        height: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "I already have an account.",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: font_green,
                                        fontFamily:
                                            'Comfortaa-VariableFont_wght'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => NameScreen()),
                                      );
                                    },
                                    child: Text(
                                      "Login to my account",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: font_green,
                                          fontFamily:
                                              'Comfortaa-VariableFont_wght',
                                          decoration: TextDecoration.underline),
                                    ),
                                  )
                                ],
                              ))),
                    )
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
