import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'bar.dart';
import 'home.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 2,
        navigateAfterSeconds: BarNavy(),
        title: Text(
          'Boumbim Medicine room',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.pink[300],
              fontStyle: FontStyle.italic),
        ),
        image: Image.asset('assets/medication.png'),
        backgroundColor: Colors.brown,
        styleTextUnderTheLoader: TextStyle(color: Colors.grey[900]),
        photoSize: 150.0,
        loaderColor: Colors.brown);
  }
}
