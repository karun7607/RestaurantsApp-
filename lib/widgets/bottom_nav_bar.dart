import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (val) {
          setState(() {
            _currentIndex = val;
          });
        },
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              label: ""),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_outline,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.bookmark,
              color: Colors.blue,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.notifications,
                color: Colors.blue,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.account_circle,
                color: Colors.blue,
              ),
              label: ""),
        ]);
  }
}
