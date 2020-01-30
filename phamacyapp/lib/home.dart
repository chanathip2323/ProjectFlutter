import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  double currentOpacity = 0;
  Animation<double> starAnimation;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        backgroundColor: Color(0xffbcaaa4),
        appBar: AppBar(
          title: Text("The world of Phamacy"),
          backgroundColor: Colors.brown,
        ),
        body: new Center(
          child: AnimatedOpacity(
            opacity: currentOpacity,
            duration: Duration(seconds: 1),
            child: Image.asset("assets/icon/medication.png"),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () {
            // เพิ่ม on pressed
            setState(() {
              currentOpacity = currentOpacity == 0 ? 1 : 0;
            });
          },
          backgroundColor: Color(0xff7955548),
        ),
      ),
    );
  }
}
