import 'package:flutter/material.dart';
import 'package:praktikum/my_package.dart';
import 'package:praktikum/my_tabbar.dart';

class MyNavbar extends StatefulWidget {
  const MyNavbar({super.key});

  @override
  State<MyNavbar> createState() => _MyNavbarState();
}

class _MyNavbarState extends State<MyNavbar> {
  int _selectedIndex = 0;

  void _onTappedItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _pages = <Widget>[
    MyTabbar(),
    MyPackage(),
    MyPackage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bottom Navigation bar'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max_rounded),
            label: 'my tabbar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adb_rounded),
            label: 'my package 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity_rounded),
            label: 'my package 2',
          ),
        ],
         selectedItemColor: Colors.amber,
         currentIndex: _selectedIndex,
         onTap: _onTappedItem,
         selectedFontSize: 20,
        ),
    );
  }
}