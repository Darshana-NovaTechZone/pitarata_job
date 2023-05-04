import 'dart:developer';

import 'package:email_validator/email_validator.dart';
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
  final email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
                    child: CustomText(
                        fontWeight: FontWeight.normal,
                        color: white,
                        text: 'Login to your account',
                        fontSize: 25,
                        fontFamily: 'Viga'),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 10),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 5),
                    child: Lottie.asset('assets/login_screen.json'),
                  ),
                  Form(
                      autovalidateMode: AutovalidateMode.always,
                      child: CustomTextField(
                        maxLength: 50,
                        keyInput: TextInputType.emailAddress,
                        hintText: 'email',
                        controller: email,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    maxLength: 20,
                    keyInput: TextInputType.text,
                    controller: password,
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
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        log(email.text.toString());

                        if (email.text.isNotEmpty && password.text.isNotEmpty) {
                          if (email.text.contains("@") &&
                              email.text.contains(".")) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Enter valid email")),
                            );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(" Incorrect email or password")),
                          );
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height / 40),
                        child: RadiusButton(
                          color: font_green,
                          colortext: white,
                          text: 'LOGIN',
                          width: 200,
                          height: 60,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
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
                                              builder: (context) =>
                                                  NameScreenOne()),
                                        );
                                      },
                                      child: Text(
                                        "Create a new account",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: font_green,
                                            fontFamily:
                                                'Comfortaa-VariableFont_wght',
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                    )
                                  ],
                                ),
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
