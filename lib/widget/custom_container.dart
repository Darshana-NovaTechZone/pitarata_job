import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../color/colors.dart';
import 'custom_text.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.text1, required this.text2,required this.colorText});
  final String text1;
  final String text2;
  final Color colorText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 80,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: light_dark, borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              color: colorText,
              fontFamily: 'Comfortaa-VariableFont_wght',
              fontSize: 17,
              fontWeight: FontWeight.normal,
              text: text1,
            ),
            SizedBox(
              height: 5,
            ),
            CustomText(
              color: Colors.white60,
              fontFamily: 'Comfortaa-VariableFont_wght',
              fontSize: 13,
              fontWeight: FontWeight.normal,
              text: text2,
            ),
          ],
        ),
      ),
    );
  }
}
