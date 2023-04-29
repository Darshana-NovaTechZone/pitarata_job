import 'package:flutter/material.dart';
import 'package:pitarata_job/Screen/name_screen/name_screen.dart';
import 'package:pitarata_job/color/colors.dart';
import 'package:pitarata_job/widget/radius_button.dart';

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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NameScreen()),
                );
              },
              child: RadiusButton(
                height: 70,
                text: "Let's do this",
                width: 150,
              )),
        ),
      ]),
    );
  }
}
