import 'package:flutter/material.dart';
import 'package:quantity_input/quantity_input.dart';
import 'package:resturant/config.dart';
import 'package:resturant/product_detail/button.dart';

import 'image_foot.dart';

class ProductDetali extends StatefulWidget {
   ProductDetali({super.key,required this.id,required this.title,required this.subtitle,required this.image,required this.price,});
String id;
String title;
String subtitle;
String image;
String price;

  @override
  State<ProductDetali> createState() => _ProductDetaliState();
}

class _ProductDetaliState extends State<ProductDetali> {
  int simpleIntInput = 1;

  @override
  Widget build(BuildContext context) {
    double screenproduct = MediaQuery.of(context).size.height / 3.5;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            ImageFoot(image:widget.image),
            Container(
              height: screenproduct *1.2,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        Center(
                          child: QuantityInput(
                              elevation: 5,
                              buttonColor: BasicColor,
                              value: simpleIntInput,
                              onChanged: (value) => setState(() => simpleIntInput =
                                  int.parse(value.replaceAll(',', '')))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.title,
                          style: TextStyle(fontSize: 35),
                        ),
                        Text(
                          widget.subtitle,
                          style: TextStyle(fontSize: 20),
                        ),
                       
                      ],
                    ),
                    
                  ],
                  
                ),
              ),
            ),
             Container(
                      // margin: EdgeInsets.symmetric(vertical: 45),
                      height: MediaQuery.of(context).size.height / 12,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: BasicColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          ButtonShop(
                              onpressed: () {
                                
                              }, title: 'اضافه الئ السلة'),
                          Spacer(),
                          Text(widget.price,style: TextStyle(fontSize: 25),),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                                       ),
          ],
        ),
      ),
    );
  }
}
