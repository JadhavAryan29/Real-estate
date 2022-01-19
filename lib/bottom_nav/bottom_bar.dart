// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psyber/bottom_nav/chat_page.dart';
import 'package:psyber/bottom_nav/home.dart';
import 'package:psyber/bottom_nav/profile.dart';
import 'package:psyber/bottom_nav/project.dart';
import 'package:psyber/bottom_nav/wishlist.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;

  List<Widget> list = [
    const HomePage(),
    const ProjectPage(),
    const WishlistPage(),
    const ChatPage(),
    const ProfilePage(),
  ];

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: changePage,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home_outlined),
              label: 'Home'
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Project'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Whishlist'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile"),
        ],
      ),
    );
  }
}
