
import 'package:flutter/material.dart';

class ButtonShop extends StatelessWidget {
   ButtonShop({super.key,required this.onpressed,required this.title});
VoidCallback onpressed;
String title;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white38,
      borderRadius: BorderRadius.circular(20),
      child:MaterialButton(onPressed: onpressed,child: Text(title,style: TextStyle(fontSize: 20),),),
    );
  }
}