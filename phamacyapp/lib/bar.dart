import 'package:flutter/material.dart';
import 'package:phamacyapp/Year.dart';
import 'package:phamacyapp/home.dart';

import 'Zodiac.dart';
import 'about.dart';

class BarNavy extends StatefulWidget {
  @override
  _BarNavyState createState() => _BarNavyState();
}

class _BarNavyState extends State<BarNavy> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    ZodiacPage(),
    YearPage(),
  ];
  PageController _pageController;
  void onTappedBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  //onItemSelected: (index) {
  //setState(() => _selectedIndex = index);
  //_pageController.jumpToPage(index);
  //},
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFEFEBE9),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        onTap: onTappedBar,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(title: Text('home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text('Inhouses'), icon: Icon(Icons.local_pharmacy)),
          BottomNavigationBarItem(
            title: Text('Herb'),
            icon: Icon(Icons.spa),
          ),
          //BottomNavigationBarItem(
          //title: Text('Me'),
          //icon: Icon(Icons.face),
          //),
        ],
      ),
    );
  }
}
