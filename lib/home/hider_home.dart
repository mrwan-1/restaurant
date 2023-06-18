// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../config.dart';

class HiderHome extends StatelessWidget {
  HiderHome({super.key,required this.drawer});
  VoidCallback drawer;
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height / 3;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size / 6,
          ),
          Text(
            'توصيل الطلب الئ',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          Row(
            children: [
              Text(
                'موقع الزبون',
                style: TextStyle(fontSize: 30),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_double_arrow_down,
                    color: BasicColor,
                  ))
            ],
          ),
       
             
        ],
      ),
    );
  }
}
