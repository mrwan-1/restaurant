import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:resturant/home/home.dart';

import 'package:resturant/shoping_card/stayle_card.dart';
import 'package:resturant/tracking/tracking.dart';

import '../config.dart';
import 'card_foot_shoping.dart';
import 'show_message.dart';

class ShopingCard extends StatefulWidget {
  const ShopingCard({super.key});

  @override
  State<ShopingCard> createState() => _ShopingCardState();
}

class _ShopingCardState extends State<ShopingCard> {
  int simpleIntInput = 1;
  

  @override
  Widget build(BuildContext context) {
    double pageshoping = MediaQuery.of(context).size.height / 2.9;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.navigate_before_sharp,
                size: 40,
                color: Colors.black,
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
                  CardFoot(),
                  CardFoot(),
                ],
              ),
            ),
            Container(
                height: pageshoping,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('الأجمالي', style: TextStyle(fontSize: 25)),
                          Text('1000', style: TextStyle(fontSize: 25)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('التوصيل', style: TextStyle(fontSize: 20)),
                          Text('100', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                      StyleCard(title: 'الأجمالي الكلي', price: '1100'),
                      SizedBox(
                        height: 10,
                      ),
                      Material(
                        color: BasicColor,
                        borderRadius: BorderRadius.circular(10),
                        child: MaterialButton(
                          minWidth: MediaQuery.of(context).size.width / 1.1,
                          onPressed: () {
                            showsheetMessege(context);
                          },
                          child: Text(
                            'تاكيد الطلب',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}



      // Container(
      //         height: pageshoping ,
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.end,
      //           children: [
      //             Divider(
      //               color: Colors.black,
      //               height: 25,
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Text('الأجمالي', style: TextStyle(fontSize: 25)),
      //                 Text('1000', style: TextStyle(fontSize: 25)),
      //               ],
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Text('التوصيل', style: TextStyle(fontSize: 20)),
      //                 Text('100', style: TextStyle(fontSize: 20)),
      //               ],
      //             ),
      //             StyleCard(title: 'الأجمالي الكلي', price: '1100'),
      //             SizedBox(
      //               height: 10,
      //             ),
      //             Material(
      //               color: BasicColor,
      //               borderRadius: BorderRadius.circular(10),
      //               child: MaterialButton(
      //                 minWidth: MediaQuery.of(context).size.width / 1.1,
      //                 onPressed: () {},
      //                 child: Text(
      //                   'تاكيد الطلب',
      //                   style: TextStyle(fontSize: 20),
      //                 ),
      //               ),
      //             ),
                 
      //           ],
      //         ),
      //       ),