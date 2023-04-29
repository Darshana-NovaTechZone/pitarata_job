import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:pitarata_job/color/colors.dart';
import 'package:pitarata_job/widget/custom_text.dart';
import 'package:pitarata_job/widget/custom_text_field.dart';
import 'package:pitarata_job/widget/radius_button.dart';

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
                color: white,
                text: 'Login to your account',
                fontsize: 25,
                fontfamily: 'Viga'),
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
                fontfamily: 'Comfortaa-VariableFont_wght',
                fontsize: 13,
                text: 'Reset my password',
              )),
          SizedBox(
            height: 10,
          ),
          RadiusButton(
            text: 'LOGIN',
            width: 200,
            height: 60,
          ),
          Expanded(
            child: Container(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                    onPressed: () {},
                    child: Container(
                        alignment: Alignment.center,
                        child: Text.rich(
                          TextSpan(
                            text: " I don't have an account.",
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Viga',
                                color: Fontgreen),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Create a new account',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                  )),
                              // can add more TextSpans here...
                            ],
                          ),
                        )))),
          )
        ]),
      ),
    );
  }
}
