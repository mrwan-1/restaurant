// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:resturant/config.dart';

import '../catogry/catogry.dart';
import '../favorite/favorite.dart';
import '../tracking/tracking.dart';
import 'dive.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        backgroundColor: Colors.grey[300],
        child: ListView(
          children: [
            const ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 40),
              title: Text(
                'marwan',
                style: TextStyle(fontSize: 25),
              ),
              subtitle: Text(
                'data',
                style: TextStyle(fontSize: 25),
              ),
              leading: CircleAvatar(
                radius: 40,
                backgroundColor: BasicColor,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            Dive(
                title: 'الصفحة الرئيسية',
                ontap: () {
                  Navigator.pop(context);
                },
                icon: Icons.home,
                icon2: Icons.arrow_back_ios_new),
                  Dive(
                title: 'قائمة الماكولات',
                icon: Icons.restaurant,
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Catogry(),));
                },
                icon2: Icons.arrow_back_ios_new),
            ExpansionTile(
              title: Text('حسابي',style: TextStyle(fontSize: 20),),
              
              children: [
                Dive(
                    title: 'حسابي',
                    icon: Icons.person,
                    icon2: Icons.arrow_back_ios_new),
                Dive(
                    title: 'طلباتي ',
                    icon: Icons.history,
                    icon2: Icons.arrow_back_ios_new),
                Dive(
                    title: 'تغيير الاعدادات الشخصيه ',
                    icon: Icons.settings,
                    icon2: Icons.arrow_back_ios_new),
              
              ],
            ),
            Dive(
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Favorit(),));
              },
                title: 'مفضلتي',
                icon: Icons.favorite_rounded,
                icon2: Icons.arrow_back_ios_new),
                 Dive(
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Tracking(),));
              },
                title: "تتبع الطلبية",
                icon: Icons.delivery_dining_sharp,
                icon2: Icons.arrow_back_ios_new),
                  Dive(
                    title: 'من نحن ',
                    icon: Icons.message,
                    icon2: Icons.arrow_back_ios_new),
                      Dive(
                    title: ' مركز الدعم ',
                    icon: Icons.phone,
                    icon2: Icons.arrow_back_ios_new),
          ],
        ),
      ),
    );
  }
}
