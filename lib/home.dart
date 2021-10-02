import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    );
  }
}
