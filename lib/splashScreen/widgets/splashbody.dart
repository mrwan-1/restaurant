import 'package:flutter/material.dart';
import 'package:resturant/config.dart';
import 'package:splashscreen/splashscreen.dart';

import '../../welcome/getstart.dart';
import '../../welcome/welcome_one.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new GetStart(),
      title: new Text('مرحبا بكم في تطبيق مطعمنا',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0
      ),),
      image: new Image.asset('assets/images/resurantimag.png'),
      backgroundColor: BasicColor,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("resurant"),
      loaderColor: Colors.white);
  }
}