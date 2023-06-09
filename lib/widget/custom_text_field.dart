import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pitarata_job/color/colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.keyInput,
      required this.maxLength});
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyInput;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        maxLength: maxLength,
        style: TextStyle(color: white),
        controller: controller,
        keyboardType: keyInput,
        validator: (value) {
          var result = EmailValidator.validate(value.toString());
          return result ? null : "Please enter a valid email";
        },
        decoration: InputDecoration(
            counterStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(
              Icons.person,
              color: background_green,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[600]),
            hintText: hintText,
            fillColor: light_dark),
      ),
    );
  }
}
