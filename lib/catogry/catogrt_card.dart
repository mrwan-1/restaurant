import 'package:flutter/material.dart';
import 'package:resturant/product/product.dart';

import '../config.dart';


class CatogryCard extends StatelessWidget {
  CatogryCard(
      {super.key,
      required this.id,
      required this.icon,
      required this.title,
      required this.image,
      required this.price,
      });
  String id;    
  IconData icon;
  String title;
  String image;
  String price;
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height / 3;

    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Product(id: id, title: title, price: price),));
      },
      child: Card(
        elevation: 2,
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(fontSize: 25),
          ),
          leading: CircleAvatar(
            backgroundColor: greyColor,
            radius: 25,
            backgroundImage: AssetImage(image,),
          ),
          trailing: Icon(
            icon,
            color: greyColor,
            size: 30,
          ),
        ),
      ),
    );
  }
}
