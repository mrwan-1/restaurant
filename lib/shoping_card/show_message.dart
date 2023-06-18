import 'package:flutter/material.dart';

import '../config.dart';
import '../home/home.dart';
import '../tracking/tracking.dart';

void showsheetMessege(BuildContext cx) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      context: cx,
      builder: (context) {
        return Container(
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Icon(
                        Icons.done,
                        color: BasicColor,
                        size: 80,
                      )),
                  Text(
                    'شكرا لطلبك',
                    style: TextStyle(
                        fontSize: 40,
                        color: BasicColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'يمكن تتبع الطلبيه من خلال الضغط علئ الزر بالاسفل',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 40,),
                  Material(
                    color: BasicColor,
                    borderRadius: BorderRadius.circular(15),
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width/1.1,
                      onPressed: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
                          return Tracking();
                        },), (route) => false);
                      },
                    child: Text('تتبع الطلبيه',style: TextStyle(color: Colors.white,fontSize: 20),),),
                  ),
                  SizedBox(height: 20,),
                  TextButton(onPressed:(){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
                      return Home();
                    },), (route) => false);
                  } , child: Text('تابع التسوق',style: TextStyle(fontSize: 20,color: Colors.black),))
                ],
              )
            ],
          ),
        );
      },
    );
  }