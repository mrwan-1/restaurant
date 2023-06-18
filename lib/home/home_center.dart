import 'package:flutter/material.dart';
import 'package:resturant/product/product.dart';

class HomeCenter extends StatefulWidget {
  const HomeCenter({super.key, required this.image, required this.title, required this.id, required this.price});
  final String id;
  final String image;
  final String title;
  final String price;
  @override
  State<HomeCenter> createState() => _HomeCenterState();
}

class _HomeCenterState extends State<HomeCenter> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height / 3;

    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Product(id: widget.id, title: widget.title, price: widget.price),));
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              height: size / 3,
              width: size / 3,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                widget.image,
              ),
            ),
            Text(
              widget.title,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
