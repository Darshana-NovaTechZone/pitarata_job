import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../color/colors.dart';

class ArrowButton extends StatelessWidget {
  const ArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: light_brown),
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: brown,
                  )),
    );
  }
}
