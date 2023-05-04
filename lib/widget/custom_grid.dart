import 'package:flutter/material.dart';
import 'package:pitarata_job/color/colors.dart';
import 'package:pitarata_job/widget/custom_text.dart';

class CustomGrid extends StatelessWidget {
  const CustomGrid({super.key, required this.row});

  final bool row;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(
                      color: light_dark,
                      borderRadius: BorderRadius.circular(50)),
                  child: Image.asset(
                    'assets/Favourite.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: light_dark,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    height: 40,
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText(
                              text: 'Job Categary',
                              fontSize: 12,
                              fontFamily: 'Comfortaa-VariableFont_wght',
                              color: white,
                              fontWeight: FontWeight.normal),
                        ),
                        row
                            ? Container(
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.upload_sharp,
                                        color: background_green,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.delete_sharp,
                                          color: red,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Container()
                      ],
                    ),
                  ),
                )
              ]),
            );
          }),
    );
  }
}
