// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Stack(children: [
            Container(
              height: 450,
              width: 450,
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    colors: [Colors.blue, Colors.green]),
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 70.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40, right: 50),
              child: Container(
                  height: 320,
                  width: 339,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 30),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 80,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 43, 138, 234),
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(100),
                          bottom: Radius.circular(
                              MediaQuery.of(context).size.width)))),
            ),
            Positioned(
                top: 20,
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                  size: 35,
                )),
            Positioned(
                top: 20,
                right: 20,
                child: Icon(
                  Icons.circle,
                  size: 35,
                  color: Colors.white,
                )),
            Positioned(
                top: 20,
                left: 140,
                child: Text(
                  'welcome',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
            Positioned(
                top: 190,
                left: 120,
                child: Text(
                  "COMPANY     \n    LOGO",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 280, left: 60),
              child: Column(
                children: [
                  Row(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280, left: 50),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 220, bottom: 10),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 10),
                        child: Row(
                          children: [
                            Text(
                              'Sign in',
                              style:
                                  TextStyle(fontSize: 19, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '   New user?',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          "create an account",
                          style: TextStyle(fontSize: 16, color: Colors.green),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 280,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40)),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none, labelText: "       Email address",
                            ),
                          ),
                        ),SizedBox(height: 10,),
                        Container(
                          height: 50,
                          width: 280,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40)),
                          child: TextField(
                            decoration: InputDecoration( border: InputBorder.none,
                              labelText: "      Password",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 30,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Text(
                              'continue',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text('Or'),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/transparent-google-suite-icon-google-icon-5f7f985ccd60e3.5687494416021975968412.jpg',
                                scale: 30,
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text('continue with google'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Center(
                            child: Container(
                              height: 50,
                              width: 270,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue,
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/facebook-logo-facebook-icon-free-free-vector.jpg',
                                  ),
                                  Text('    continue with Facebook'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                  color: Colors.white38,
                ),
                height: 400,
                width: 300,
              ),
            )
          ]),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
