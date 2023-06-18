import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:resturant/home/home.dart';
import 'package:resturant/splashScreen/splash_Screen.dart';
import 'package:resturant/shoping_card/shoping_card.dart';



void main()async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'resturans',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      
    );
  }
}
