import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:pitarata_job/Screen/favorite/favorite.dart';
import 'package:pitarata_job/color/colors.dart';
import 'package:pitarata_job/widget/custom_grid.dart';
import 'package:pitarata_job/widget/custom_list.dart';
import 'package:pitarata_job/widget/custom_text.dart';

import '../notification/notification.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: light_dark,
            type: BottomNavigationBarType.fixed,
            currentIndex: 0,
            onTap: (value) {
              log(value.toString());
              if (value == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoriteScreen()),
                );
              }
              if (value == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              }
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: font_green,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  color: font_green,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_none,
                  color: font_green,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu_book_sharp,
                  color: font_green,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: font_green,
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
            width: double.infinity,
            child: Image.asset(
              'assets/pexels2.jpg',
              fit: BoxFit.cover,
            ),

            // ImageSlideshow(
            //   /// Width of the [ImageSlideshow].
            //   width: double.infinity,

            //   /// Height of the [ImageSlideshow].
            //   height: MediaQuery.of(context).size.height / 8,

            //   /// The page to show when first creating the [ImageSlideshow].
            //   initialPage: 0,

            //   /// The color to paint the indicator.
            //   indicatorColor: Colors.blue,

            //   /// The color to paint behind th indicator.
            //   indicatorBackgroundColor: Colors.grey,

            //   /// The widgets to display in the [ImageSlideshow].
            //   /// Add the sample image file into the images folder
            //   children: [
            //     Image.asset(
            //       'assets/pexels1.jpg',
            //       fit: BoxFit.cover,
            //     ),
            //     Image.asset(
            //       'assets/pexels2.jpg',
            //       fit: BoxFit.cover,
            //     ),
            //   ],

            //   /// Called whenever the page in the center of the viewport changes.
            //   onPageChanged: (value) {
            //     print('Page changed: $value');
            //   },

            //   /// Auto scroll interval.
            //   /// Do not auto scroll with null or 0.
            //   autoPlayInterval: 3000,

            //   /// Loops back to first slide.
            //   isLoop: true,
            // ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: CustomText(
                text: 'Job Categories',
                fontSize: 17,
                fontFamily: 'Comfortaa-VariableFont_wght',
                color: white,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: CustomList(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 250,
                        child: Stack(children: [
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              alignment: Alignment.bottomLeft,
                              decoration: BoxDecoration(
                                  color: light_dark,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              height: MediaQuery.of(context).size.height / 3.2,
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CustomText(
                                        text: 'Job Category',
                                        fontSize: 12,
                                        fontFamily:
                                            'Comfortaa-VariableFont_wght',
                                        color: white,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: MediaQuery.of(context).size.height / 3.2,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: light_dark,
                                  borderRadius: BorderRadius.circular(50)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/Favourite.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 8,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: white,
                                )),
                          ),
                        ]),
                      ),
                    );
                  }),
            ),
          )
        ]),
      ),
    );
  }
}
