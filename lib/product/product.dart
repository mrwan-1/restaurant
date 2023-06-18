import 'package:flutter/material.dart';
import 'package:resturant/config.dart';
import 'package:resturant/product/product_card.dart';

class Product extends StatefulWidget {
  const Product(
      {super.key, required this.id, required this.title, required this.price});
  final String id;
  final String title;
  final String price;

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var myarr_product = [
    {
      "id": "1",
      "title": "برجر دجاج",
      "price": "1,300"
    },
    {"id": "2", "title": "برحر لحم", "price": "1,500"},
    {"id": "3", "title": "برجر دبل", "price": "2,000"}
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: greyColor,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              )),
          elevation: 1,
          title: Text(
            widget.title,
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          centerTitle: true,
        ),
        backgroundColor: greyColor,
        body: ListView.builder(
          itemCount: myarr_product.length,
          itemBuilder: (context, i) => ProductCard(
              id: myarr_product[i]['id']!,
              title: myarr_product[i]['title']!,
              price: myarr_product[i]['price']!),
        ),
      ),
    );
  }
}
