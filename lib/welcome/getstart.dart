import 'package:flutter/material.dart';
import 'package:resturant/welcome/welcome_one.dart';

import '../config.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height / 3;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: myheight * 2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/images/met.png'),
                      fit: BoxFit.contain)),
            ),
            Container(
              height: myheight,
              decoration: BoxDecoration(
                  color: BasicColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3))
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      textDirection: TextDirection.rtl,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'اشهئ الماكولات',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'افضل الماكولات تجدونها في مطعمنا ',
                          style: TextStyle(
                              fontSize: 21,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 30,),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) {
                            return  WelcomeOne();
                            },), (route) => false);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                            child: Text('ابداء من هنا',)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
