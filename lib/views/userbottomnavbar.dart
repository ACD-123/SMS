import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/views/addtocart.dart';
import 'package:sms/views/chats/chatslistscreen.dart';
import 'package:sms/views/seller/sellerwelcomescreen.dart';
import 'package:sms/views/userhomescreen.dart';

class UserBottomNavBar extends StatefulWidget {
  @override
  _UserBottomNavBarState createState() => _UserBottomNavBarState();
}

class _UserBottomNavBarState extends State<UserBottomNavBar> {
  int _pageIndex = 0;

  final List<Widget> _pages = [
    const HomeUserScreen(),
    const SellerWelcomeScreen(),
    const AddToCart(),
    ChatsListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_pageIndex],
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 500),
        backgroundColor: Color(0xff2E3192),
        items: <Widget>[
          Image.asset(
            'assets/images/homeicon.png',
            color: Color(0xff2E3192),
            scale: 6.sp,
          ),
          Image.asset(
            'assets/images/sellingicon.png',
            color: Color(0xff2E3192),
            scale: 6.sp,
          ),
          Image.asset(
            'assets/images/bottombarcarticon.png',
            color: Color(0xff2E3192),
            scale: 7.sp,
          ),
          Image.asset(
            'assets/images/messagesicon.png',
            color: Color(0xff2E3192),
            scale: 6.sp,
            height: 3.h,
          ),
        ],
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
      ),
    );
  }
}
