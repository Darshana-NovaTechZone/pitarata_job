import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:lottie/lottie.dart';
import 'package:pitarata_job/Screen/blog/blog.dart';
import 'package:pitarata_job/Screen/favorite/favorite.dart';
import 'package:pitarata_job/color/colors.dart';
import 'package:pitarata_job/widget/custom_grid.dart';
import 'package:pitarata_job/widget/custom_home.dart';
import 'package:pitarata_job/widget/custom_list.dart';
import 'package:pitarata_job/widget/custom_text.dart';
import 'package:pitarata_job/widget/drawer.dart';

import '../notification/notification.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    MyHome(),
    FavoriteScreen(),
    NotificationScreen(),
    Blog(),
    Icon(
      Icons.chat,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
  ];
  void _onItemTapped(int index) {
    log('ffff');
    setState(() {
      _selectedIndex = index;
      log(_selectedIndex.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomNavigationBar(
            unselectedIconTheme: IconThemeData(
              color: font_green,
            ),
            unselectedItemColor: Colors.deepOrangeAccent,
            selectedIconTheme: IconThemeData(color: font_green, size: 40),
            selectedItemColor: font_green,
            onTap: _onItemTapped,
            showSelectedLabels: false,
            showUnselectedLabels: true,
            backgroundColor: light_dark,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_none,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu_book_sharp,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
    );
  }
}
