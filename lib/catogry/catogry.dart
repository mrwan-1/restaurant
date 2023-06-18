import 'package:flutter/material.dart';

import '../config.dart';
import 'catogrt_card.dart';
import 'myarr_catogrts.dart';

class Catogry extends StatefulWidget {
  const Catogry({super.key});

  @override
  State<Catogry> createState() => _CatogryState();
}

class _CatogryState extends State<Catogry> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        centerTitle: true,
        title: Text('قائمة الماكولات',style: TextStyle(color: Colors.black,fontSize: 25),),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: ListView.builder(
        itemCount: myarr_categorys.length,
        itemBuilder: (context, i) => CatogryCard(
          id: myarr_categorys[i]['id']!,
          icon: Icons.arrow_back_ios_new,
          image: myarr_categorys[i]['image']!,
          title: myarr_categorys[i]['name']!,
          price:myarr_categorys[i]['price']!,

        ),
      ),
    );
  }
}

