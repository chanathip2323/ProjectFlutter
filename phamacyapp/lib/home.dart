import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var purple = Colors.purple;
    return Scaffold(
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          title: Text("WELCOME"),
          backgroundColor: purple,
        ),
        body: Center(
          child: Text('Home'),
        ));
  }
}
