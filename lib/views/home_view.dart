import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> items = ['cars', 'bus', 'airplane', 'motorbike'];
  List<IconData> itms = [
    Icons.car_rental,
    Icons.bus_alert,
    Icons.airplane_ticket,
    Icons.motorcycle
  ];

  String get routeName => '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurants'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.details),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.list),
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              MediaQuery.of(context).orientation == Orientation.landscape
                  ? 3
                  : 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: (2 / 1),
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(routeName);
            },
            child: Container(
              color: RandomColorModel().getColor(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(itms[index]),
                  Text(
                    items[index],
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class RandomColorModel {
  Random random = Random();
  Color getColor() {
    return Color.fromARGB(random.nextInt(300), random.nextInt(300),
        random.nextInt(300), random.nextInt(300));
  }
}
