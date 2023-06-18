import 'package:flutter/material.dart';
import 'package:resturant/catogry/catogry.dart';
import 'package:resturant/favorite/favorite.dart';
import 'package:resturant/home/home.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../config.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
    var _currentIndex = 0;
var page=[
  Home(),
  Favorit(),
  Catogry(),
];
  @override
  Widget build(BuildContext context) {
    return  SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => page[_currentIndex = i]),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: BasicColor,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text("Likes"),
              selectedColor: BasicColor,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: BasicColor,
            ),
          ],
        );
  }
}