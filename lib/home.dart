import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> items = ['cars', 'bus', 'airplane', 'motorbike'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurants'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.maybePop(context);
            },
            icon: Icon(Icons.details),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.list),
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 6,
        children: [
          GestureDetector(
            onTap: () {
              return;
            },
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.red,
                ),
                child: Text('items'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
