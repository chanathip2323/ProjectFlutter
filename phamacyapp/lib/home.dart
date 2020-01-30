import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        duration: Duration(milliseconds: 1200), vsync: this);
    animationController.addListener(() {
      setState(() {
        print(animationController.value);
      });
    });
    super.initState();
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  Widget buildScaleTransitionWidget(
      {AnimationController controller, Widget widget}) {
    return AnimatedBuilder(
        animation: controller,
        child: widget,
        builder: (context, child) {
          return ScaleTransition(
              scale: Tween<double>(begin: 0, end: 1).animate(controller),
              child: child);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbcaaa4),
      appBar: AppBar(
        title: Text("The world of Phamacy"),
        backgroundColor: Colors.brown,
      ),
      body: Center(
          child: buildScaleTransitionWidget(
              controller: animationController,
              widget: Container(
                width: 800,
                height: 800,
                child: Image.asset("assets/medication.png"),
              ))),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () {
            if (animationController.isCompleted) {
              animationController.reverse();
            } else {
              animationController.forward();
            }
          },
          backgroundColor: Color(0xff7955548)),
    );
  }
}
