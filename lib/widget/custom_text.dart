import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      required this.fontsize,
      required this.fontfamily,
        required this.color});
  final String text;
  final double fontsize;
  final String fontfamily;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text,
          style: TextStyle(
              color: color, fontFamily: fontfamily, fontSize: fontsize)),
    );
  }
}
