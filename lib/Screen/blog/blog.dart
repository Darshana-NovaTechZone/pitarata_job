import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:pitarata_job/color/colors.dart';
import 'package:pitarata_job/widget/arrow_button.dart';
import 'package:pitarata_job/widget/custom_grid.dart';
import 'package:pitarata_job/widget/custom_text.dart';

class Blog extends StatefulWidget {
  const Blog({super.key});

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
              log('kkkkkk');
            },
            child: ArrowButton(icons: Icons.arrow_back_ios_new)),
        backgroundColor: black,
        title: Container(
            alignment: Alignment.centerRight,
            child: CustomText(
              color: white,
              fontFamily: 'Comfortaa-VariableFont_wght',
              fontSize: 17,
              fontWeight: FontWeight.w900,
              text: 'Job Blog',
            )),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(8),
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: light_dark, borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                        text: 'How to apply for a job',
                        fontSize: 17,
                        fontFamily: 'Comfortaa-VariableFont_wght',
                        color: white,
                        fontWeight: FontWeight.bold),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        alignment: Alignment.center,
                        child: Text(
                          'One an sport for next 30 days.This an is the man for comparing for other and this is the cool pac an with the cool attitude ',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Comfortaa-VariableFont_wght',
                              color: white,
                              fontWeight: FontWeight.normal),
                        )),
                    Container(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          ' 2022-10-26 10:21 AM',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Comfortaa-VariableFont_wght',
                              color: Colors.white60,
                              fontWeight: FontWeight.normal),
                        )),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
