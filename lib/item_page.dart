// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:first_learning_app/favorite_page.dart';
import 'package:first_learning_app/login_page.dart';
import 'package:flutter/material.dart';
import 'cart_page.dart';

class ItemPage extends StatefulWidget {
  final String name;
  final String urlImage;

  const ItemPage({required this.name, required this.urlImage});
  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Leaf Store',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
              width: 20,
            ),
            Container(
              height: 400,
              width: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(27)),
                image: DecorationImage(
                  image: AssetImage(widget.urlImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 19,
              width: 19,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                  width: 15,
                ),
                Container(
                  height: 45,
                  width: 370,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.purple.shade100),
                  child: Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                SizedBox(
                  height: 60,
                  width: 480,
                  child: Text(
                    " * Save valuable space on your desk, with specially \n    designed clip"
                    " that fits on nearly any monitor.",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 480,
                  child: Text(
                    " * Asymmetrical optical design that eliminates refl\n    -ective glare off the screen.",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 480,
                  child: Text(
                    " * Adjustable color temperature and auto dimming\n    by bulit-in light sensor in the destop dial,"
                    " provid\n    -ing the best lighting environment.",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                  width: 30,
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: FloatingActionButton.large(
                    heroTag: "btn2",
                    backgroundColor: Colors.deepPurple,
                    onPressed: () => {},
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                ),
                SizedBox(
                  width: 95,
                ),
                SizedBox(
                  height: 70,
                  width: 250,
                  child: FloatingActionButton.extended(
                    heroTag: "btn1",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartPage(),
                        ),
                      );
                    },
                    label: Text(
                      "Add to cart",
                      style: TextStyle(fontSize: 27),
                    ),
                    icon: Icon(
                      Icons.add_shopping_cart,
                      size: 35,
                    ),
                    backgroundColor: Colors.deepPurple,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 236, 231, 231),
    );
  }
}
