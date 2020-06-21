import 'package:appfinalproject/ui/view/auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:appfinalproject/ui/constant/constant.dart';
import 'package:appfinalproject/ui/view/do_page.dart';
import 'package:appfinalproject/ui/view/home_page.dart';
import 'package:appfinalproject/ui/view/news_page.dart';
import 'package:appfinalproject/ui/view/profile_page.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 2;

  final _lisPage = <Widget>[
    DoPage(),
    ProfilePage(),
    HomePage(),
    WelcomeScreen(),
    NewsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _lisPage[_selectedIndex],
      bottomNavigationBar: FFNavigationBar(

        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.white,
          selectedItemBackgroundColor: deepBlue,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.black,
        ),
        selectedIndex: _selectedIndex,
        onSelectTab: (index) {
          setState(() {
            _onNavBarTapped(index);
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.calendar_today,
            label: 'Lịch sử',
          ),
          FFNavigationBarItem(
            iconData: Icons.people,
            label: 'Contacts',
          ),
          FFNavigationBarItem(
            iconData: Icons.attach_money,
            label: 'Đặt lịch',
          ),
          FFNavigationBarItem(
            iconData: Icons.note,
            label: 'Notes',
          ),
          FFNavigationBarItem(
            iconData: Icons.menu,
            label: 'Menu',
          ),
        ],
      ),
    );
  }

  void _onNavBarTapped(int index) {
    setState(() => _selectedIndex = index);
  }
}
