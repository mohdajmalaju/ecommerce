import 'package:flutter/material.dart';
import 'package:http/http.dart';


final List<String> title = <String>['DAVI', 'SMITH', 'JOHN', 'CHRIST'];
List<Map<String, dynamic>> data = [
  {
    "image": "assets/download.jpg",
    "name": 'john',
    'message': ' Drank cappuccino',
    "icon": Icons.coffee
  },
  {
    "image": "assets/download (1).jpg",
    "name": 'smith',
    'message': '  Ate a strawberry muffin',
    "icon": Icons.abc
  },
  {
    "image": "assets/images.jpg",
    "name": 'romeo',
    'message': '  Drank espesso',
    "icon": Icons.search
  },
  {
    "image": "assets/download (2).jpg",
    "name": 'adam',
    'message': '   Ate a powdered cake',
    "icon": Icons.coffee
  },
];


class example extends StatefulWidget {
  example({super.key});

  @override
  State<example> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<example> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                title: Text('              FEED'),
                backgroundColor: Colors.white,
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                )),
            body: ListView.builder(
              itemCount: title.length,
              itemBuilder: (context, int) {
                return Column(
                  children: [
                    Container(
                      
                        child: Row(
                          children: [
                            Image(image: AssetImage(data[int]['image'])),
                            Column(
                              children: [
                                Text(data[int]['name']),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(data[int]['message']),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Icon(data[int]['icon']),
                            )
                          ],
                        ),
                        height: 100,
                        width: 350,
                        color: Colors.white),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                );
              },
            )));
 }}
