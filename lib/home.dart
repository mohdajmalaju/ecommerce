
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                height: 759,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 10,
                      width: 20,
                      color: Color.fromARGB(255, 10, 18, 31),
                    ),
                    Container(
                      color: Color.fromARGB(255, 240, 242, 240),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                      ),
                      height: 300,
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
                    Container(
                      height: 245,
                      width: 325,
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(156, 32, 138, 250),
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(
                          MediaQuery.of(context).size.width,
                        )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 240),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Icon(
                              Icons.calendar_month,
                              size: 60,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Icon(
                              Icons.message,
                              size: 60,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Icon(
                              Icons.location_on,
                              size: 60,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 670),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.window_rounded,
                                color: Colors.white,
                                size: 45,
                              )),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Hello,John Smith",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text(
                                "New York,USA",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.circle,
                            size: 45,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 310, left: 20),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Featured",style: TextStyle(
                          fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black,
                        ),),
                          Text(
                            "view all",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color:  Colors.black38),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 563, left: 20),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Best Seller",style: TextStyle(
                          fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black,),
                          ),Text(
                            "view all",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 150, left: 25),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.blue,
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 590, left: 20),
                      child: Card(
                        elevation: 50,
                        shadowColor: Colors.black12,
                        color: Colors.white,
                        child: SizedBox(
                          width: 150,
                          height: 200,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(bottom: 140, left: 100),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 590, left: 200),
                      child: Card(
                        elevation: 50,
                        shadowColor: Colors.black12,
                        color: Colors.white,
                        child: SizedBox(
                          width: 150,
                          height: 200,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(bottom: 140, left: 90),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 330, left: 20),
                      child: Row(
                        children: [
                          Card(
                            elevation: 50,
                            shadowColor: Colors.black,
                            color: Colors.white,
                            child: SizedBox(
                              width: 150,
                              height: 200,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 100, bottom: 140),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              elevation: 50,
                              shadowColor: Colors.black,
                              color: Colors.white,
                              child: SizedBox(
                                width: 150,
                                height: 200,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 100, bottom: 140),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
