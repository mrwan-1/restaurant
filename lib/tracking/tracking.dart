import 'package:flutter/material.dart';
import 'package:resturant/config.dart';
import 'package:resturant/shoping_card/shoping_card.dart';

import '../home/home.dart';
import 'timel_card.dart';

class Tracking extends StatefulWidget {
  const Tracking({super.key});

  @override
  State<Tracking> createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                builder: (context) {
                  return Home();
                },
              ), (route) => false);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.messenger_outline,
                color: Colors.black,
              ))
        ],
        backgroundColor: greyColor,
        title: Text(
          "تتبع الطلبية",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'الوقت المقدر لاستلام الطلبيه',
            style: TextStyle(fontSize: 25),
          ),
          Text(
            '00:40:00',
            style: TextStyle(fontSize: 25, color: BasicColor),
          ),
          Card(
            elevation: 2,
            child: ListTile(
              title: Text(
                'اسم الموصل',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                'هلال نصف الليل',
                style: TextStyle(fontSize: 20),
              ),
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: greyColor,
                child: Icon(
                  Icons.delivery_dining_sharp,
                  size: 36,
                  color: BasicColor,
                ),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star_border, size: 22, color: BasicColor),
                  Text(
                    '4.0',
                    style: TextStyle(fontSize: 15, color: BasicColor),
                  ),
                ],
              ),
            ),
          ),
          TimelCard(
            title: 'تاكيد الطلبية',
          ),
          TimelCard(
            title: 'تجهيز الطلبيه',
          ),
          TimelCard(
            title: 'في الطريق اليك',
          ),
          TimelCard(
            title: 'تم التوصيل',
          ),
        ],
      ),
    );
  }
}
