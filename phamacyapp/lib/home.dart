import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var purple = Colors.brown;
    return Scaffold(
        backgroundColor: Colors.brown[200],
        appBar: AppBar(
          title: Text("HOME"),
          backgroundColor: purple,
        ),
        body: Center(
          child: Text('WELLCOME'),
        ));
  }
}
