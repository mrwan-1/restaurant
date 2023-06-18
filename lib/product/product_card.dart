import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';

import '../config.dart';

class ProductCard extends StatelessWidget {
   ProductCard({
    Key? key,
    required this.id,
    required this.title,
    required this.price
  }) ;
  String id;
String title;
String price;
  @override
  Widget build(BuildContext context) {
    double wpro = MediaQuery.of(context).size.width /3;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
        
            borderRadius: BorderRadius.circular(10), color: Colors.white38),
        height: MediaQuery.of(context).size.height / 7,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.topRight,
              width: wpro/1.1,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(right: Radius.circular(10)),
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/them/foot.png'),
                ),
              ),
              child: Container(
                width: 30,
                height: 30,
                  decoration: BoxDecoration(
                    color:BasicColor,
                    borderRadius: BorderRadius.only(topRight:Radius.circular(10) ,bottomLeft:Radius.circular(10) )
                  ),
                  child: Icon(Icons.favorite_border,color: Colors.white,)),
            ),
            SizedBox(width: 4,),
            SizedBox(
              height: 7,
            ),
            Container(
              width: wpro/1.1,
              child: Text(
                title,
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),
            Container(
              width: wpro,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    price,
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                 
                  Material(
                  color: BasicColor,
                  
                  borderRadius: BorderRadius.circular(20),
                    child: MaterialButton(
                      
                      onPressed: (){},child: Text("اضف للسلة",style: TextStyle(fontSize: 20),),),
                  )
                    ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
