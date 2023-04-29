import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pitarata_job/color/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Text(
              '"The best preparation for tommorrow is doing your best today"',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Viga', fontSize: 50)),
        ),
        Text('Take a moment each day to improve yourself. ',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontFamily: 'Viga', fontSize: 27)),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: Container(
              alignment: Alignment.center,
              height: 70,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Fontgreen),
              child: Text("Let's do this",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Comfortaa-VariableFont_wght',
                      fontSize: 17)),
            ),
          ),
        ),
      ]),
    );
  }
}
