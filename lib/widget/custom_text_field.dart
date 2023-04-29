import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pitarata_job/color/colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hintText});
  String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                color: Background_green,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[600]),
              hintText: hintText,
              fillColor: light_dark),
        ),
      ),
    );
  }
}
