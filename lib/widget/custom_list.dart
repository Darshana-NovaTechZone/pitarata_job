import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pitarata_job/color/colors.dart';
import 'package:pitarata_job/widget/custom_text.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key, required this.cat});
  final List cat;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
          itemCount: cat.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: 80,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: background_green),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      'assets/c1.PNG',
                      scale: 2,
                    ),
                  ),
                  CustomText(
                      text: cat[index],
                      fontSize: 15,
                      fontFamily: 'Viga',
                      color: white,
                      fontWeight: FontWeight.normal)
                ]),
              ),
            );
          }),
    );
  }
}
