// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class OrderNowPage extends StatefulWidget {
  const OrderNowPage({Key? key}) : super(key: key);

  @override
  State<OrderNowPage> createState() => _OrderNowPageState();
}

class _OrderNowPageState extends State<OrderNowPage> {
  Widget widthSpace(double w) => SizedBox(width: w);

  Widget heightSpace(double h) => SizedBox(height: h);

  Widget writeFiled(String tex) {
    return Container(
      height: 50,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.deepPurple,
      ),
      child: TextField(
        style: const TextStyle(color: Color(0xffffffff), fontSize: 20),
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            labelText: tex,
            labelStyle: const TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfafafafa),
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back,
                  color: Colors.deepPurple, size: 30),
              onPressed: () {
                Navigator.of(context).pop();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 400,
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("asset/purple_leaf_logo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            heightSpace(60),
            writeFiled("Name"),
            heightSpace(40),
            writeFiled("Phone"),
            heightSpace(40),
            writeFiled("Nearest point"),
            heightSpace(160),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 50,
                  width: 150,
                  child: Text(
                    "Total Price: 2,346.96\$",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 225,
                  child: FloatingActionButton.extended(
                    heroTag: "btn1",
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          content: Container(
                              padding: EdgeInsets.all(16),
                              height: 90,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Purchase done successfully !",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height: 5),
                                  Text("Thank you for choosing Us.",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis)
                                ],
                              )),
                        ),
                      );
                    },
                    label: Text(
                      "Order Now",
                      style: TextStyle(fontSize: 22),
                    ),
                    icon: Icon(
                      Icons.credit_card,
                      size: 30,
                    ),
                    backgroundColor: Colors.deepPurple,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
