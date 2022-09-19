import 'package:flutter/material.dart';
import 'package:light_animated_view/utilites/colors.dart';

import '../screens/homeScreen.dart';

class BottamNavigation extends StatefulWidget {
  const BottamNavigation({Key? key}) : super(key: key);

  @override
  _BottamNavigationState createState() => _BottamNavigationState();
}

class _BottamNavigationState extends State<BottamNavigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List _widgetOptions = [HomeScreen(), HomeScreen(), HomeScreen()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.lightbulb_outline_sharp,
                color: AppColors.iconColor,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: AppColors.iconColor,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: AppColors.iconColor,
              ),
              label: ""),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
