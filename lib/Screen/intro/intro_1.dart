import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:pitarata_job/Screen/intro/intro_2.dart';
import 'package:pitarata_job/color/colors.dart';

import '../../widget/arrow_button.dart';

class IntroOnePage extends StatefulWidget {
  const IntroOnePage({super.key});

  @override
  State<IntroOnePage> createState() => _IntroOnePageState();
}

class _IntroOnePageState extends State<IntroOnePage> {
  var asset;

  var image;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(children: [
        SizedBox(height: MediaQuery.of(context).size.height / 6),

        // if (image != null)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          // child: Image.asset('assets/app-logo.png'),
          child: Lottie.asset('assets/intro_1.json'),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 6),
        Text(
            ' Welcome to the Pita Rata Jobs.\n The app that helps you find job opportunities abroad!',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontFamily: 'Viga', fontSize: 27)),
        Expanded(
          child: Container(
            alignment: Alignment.bottomRight,
            child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntroTwoPage()),
                  );
                },
                child: ArrowButton()),
          ),
        )
      ]),
    );
  }
}
