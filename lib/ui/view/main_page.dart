import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:appfinalproject/ui/constant/constant.dart';
import 'package:appfinalproject/ui/view/do_page.dart';
import 'package:appfinalproject/ui/view/home_page.dart';
import 'package:appfinalproject/ui/view/news_page.dart';
import 'package:appfinalproject/ui/view/profile_page.dart';
import 'file:///D:/project/final-project/app/app_final_project/lib/ui/view/login/login_page.dart';
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
    LoginPage(),
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
//      bottomNavigationBar: SafeArea(
//        child: Container(
//          decoration: BoxDecoration(
//            color: Colors.white,
//            border: Border(top: BorderSide(color: Colors.grey[200])),
//          ),
//          padding: EdgeInsets.symmetric(
//              horizontal: spacing(2), vertical: spacing(1)),
//          child: GNav(
//            gap: 2,
//            activeColor: Colors.white,
//            iconSize: 26,
//            tabBackgroundGradient: LinearGradient(
//              colors: [deepBlue, midPurple, midPink],
//              begin: Alignment(-1.0, -1.0),
//              end: Alignment(1.0, 1.0),
//            ),
//            padding: EdgeInsets.symmetric(
//                horizontal: spacing(2), vertical: spacing(.5)),
//            duration: Duration(milliseconds: 250),
//            tabs: [
//              GButton(
//                icon: Icons.info,
//                text: 'Info',
//              ),
//              GButton(
//                icon: Icons.calendar_today,
//                text: 'Đặt lịch',
//              ),
//              GButton(
//                icon: Icons.person,
//                text: 'Tài khoản',
//              ),
//              GButton(
//                icon: Icons.person,
//                text: 'Tài khoản',
//              ),
//            ],
//            selectedIndex: _selectedIndex,
//            onTabChange: (index) {
//              _onNavBarTapped(index);
//            },
//          ),
//        ),
//      ),
    );
  }

  void _onNavBarTapped(int index) {
    setState(() => _selectedIndex = index);
  }
}
