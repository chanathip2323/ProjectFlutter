import 'package:flutter/material.dart';
import 'package:phamacyapp/home.dart';
import 'Year.dart';
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
    AboutMePage(),
    AboutMePage()
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

// onItemSelected: (index) {
//           setState(() => _selectedIndex = index);
//           _pageController.jumpToPage(index);
//         },
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
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text('Inhouses'), icon: Icon(Icons.star)),
          BottomNavigationBarItem(
            title: Text('herb'),
            icon: Icon(Icons.pets),
          ),
          BottomNavigationBarItem(
            title: Text('Me'),
            icon: Icon(Icons.face),
          ),
        ],
      ),
    );
  }
}
