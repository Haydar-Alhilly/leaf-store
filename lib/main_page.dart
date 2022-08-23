// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_learning_app/favorite_page.dart';
import 'package:first_learning_app/home_page.dart';
import 'package:first_learning_app/login_page.dart';
import 'package:flutter/material.dart';
import 'cart_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), CartPage(), FavoritePage(), LoginPage()];
  int currentIndex = 0;
  void ifPressed(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: ifPressed,
        buttonBackgroundColor: Colors.deepPurple,
        height: 55,
        backgroundColor: Colors.deepPurple,
        color: Color(0xfafafafa),
        animationDuration: Duration(milliseconds: 500),
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.shopping_cart, size: 30),
          Icon(Icons.favorite, size: 30),
          Icon(Icons.login_sharp, size: 30)
        ],
      ),
    );
  }
}
