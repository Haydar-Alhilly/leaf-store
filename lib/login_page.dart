// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 150),
            Center(
              child: Container(
                height: 650,
                width: 430,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 3, color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                      height: 30,
                    ),
                    SizedBox(
                      height: 70,
                      width: 300,
                      child: Text(
                        "   SIGN IN",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 150,
                      child: Text(
                        "      Email",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 60,
                        width: 370,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.purple.shade100,
                                blurRadius: 5,
                                spreadRadius: 2,
                              ),
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                      height: 30,
                    ),
                    SizedBox(
                      height: 30,
                      width: 150,
                      child: Text(
                        "      Password",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 60,
                        width: 370,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.purple.shade100,
                                blurRadius: 5,
                                spreadRadius: 2,
                              ),
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                      height: 30,
                    ),
                    Center(
                      child: Container(
                        height: 60,
                        width: 370,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.pink,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.deepPurple.withOpacity(0.7),
                                blurRadius: 5,
                                spreadRadius: 2,
                              ),
                            ]),
                        child: FloatingActionButton.extended(
                          onPressed: () => {},
                          label: Text(
                            "SIGN IN",
                            style: TextStyle(
                                fontSize: 26, color: Colors.deepPurple),
                          ),
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.deepPurple,
                            height: 0.1,
                            indent: 30,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.1, color: Colors.deepPurple),
                          ),
                          child: Text(
                            "OR",
                            style: TextStyle(
                                fontSize: 20, color: Colors.deepPurple),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.deepPurple,
                            height: 0.1,
                            endIndent: 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 30,
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: FloatingActionButton(
                            onPressed: () => {},
                            child: Image.asset("asset/circle google logo.png"),
                          ),
                        ),
                        SizedBox(
                          width: 60,
                          height: 30,
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: FloatingActionButton(
                            onPressed: () => {},
                            child:
                                Image.asset("asset/circle facebook logo.png"),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          height: 30,
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: FloatingActionButton(
                            onPressed: () => {},
                            child:
                                Image.asset("asset/circle linkedin logo.png"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 170,
                          height: 25,
                          child: Text(
                            " Don't have an account?",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 75,
                          height: 32,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.red,
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                            child: const Text('SIGN UP'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
