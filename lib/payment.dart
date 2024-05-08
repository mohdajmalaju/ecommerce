import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key});

  @override
  Widget build(BuildContext context) {
    List<String> paymentMethods = ['Visa', 'Bank Transfer'];

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.grey.shade50,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 140),
                    child: Container(
                      height: 550,
                      width: 450,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            colors: [Colors.blue, Colors.green]),
                        borderRadius: BorderRadius.vertical(
                            top: Radius.elliptical(
                                MediaQuery.of(context).size.width, 70.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 160, left: 100),
                    child: Container(
                      height: 320,
                      width: 290,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 70, bottom: 30),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 43, 138, 234),
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(320),
                              bottom: Radius.circular(
                                  MediaQuery.of(context).size.width))),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 10,
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.grey,
                      size: 35,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Icon(
                      Icons.circle,
                      size: 35,
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 150,
                    child: Text(
                      'Payment',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 500, left: 20),
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 50, top: 20),
                                child: Text(
                                  "Choose Your Shipping Address",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height: 70,
                                  width: 310,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: "  Your address goes here",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          height: 150,
                          width: 360,
                          decoration: BoxDecoration(
                              color: Colors.white38,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 260, left: 30),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Column(
                          children: [
                            Text(
                              'Choose Your Payment \n Method',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 19),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: DropdownButton<String>(
                                items: paymentMethods.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? value) {},
                                hint: Text('Select'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      height: 200,
                      width: 340,
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 100),
                    child: BlurryContainer(
                      blur: 55,
                      width: 200,
                      height: 130,
                      elevation: 0,
                      color: const Color.fromARGB(0, 231, 224, 224),
                      padding: const EdgeInsets.all(8),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Container(
                                    height: 20,
                                    width: 180,
                                    color: Colors.white60),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 70),
                                  child: Container(
                                    height: 20,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
