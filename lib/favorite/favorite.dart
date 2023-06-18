import 'package:flutter/material.dart';

import 'package:resturant/shoping_card/stayle_card.dart';

import '../config.dart';
import 'favorite_card.dart';

class Favorit extends StatefulWidget {
  const Favorit({super.key});

  @override
  State<Favorit> createState() => _FavoritState();
}

class _FavoritState extends State<Favorit> {
  int simpleIntInput = 1;

  @override
  Widget build(BuildContext context) {
    double pageshoping = MediaQuery.of(context).size.height / 2.9;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('مفضلتي',style: TextStyle(fontSize: 25,color: Colors.black),),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.navigate_before_sharp,
                size: 40,color: Colors.black,
              )),
          backgroundColor: Colors.grey[300],
          elevation: 0,
        ),
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Container(
              height: pageshoping * 1.6,
              child: ListView(
                children: [
                  FavoritCard(),
                  FavoritCard(),

                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}


