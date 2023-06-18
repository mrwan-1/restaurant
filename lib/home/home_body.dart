import 'package:flutter/material.dart';
import 'package:resturant/product_detail/product_detali.dart';

class HomeBody extends StatefulWidget {
  HomeBody(
      {super.key,
      required this.id,
      required this.image,
      required this.name,
      required this.title,
      required this.subtitle,
       this.price});
  final String id;
  final String image;
  final String name;
  final String title;
  final String subtitle;
  final String? price;
  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetali(
                  id: widget.id,
                  title: widget.title,
                  subtitle: widget.subtitle,
                  image: widget.image,
                  price: widget.price!),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(widget.image))),
              child: Text(widget.name),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                widget.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            // Text(widget.subtitle,style: TextStyle(fontSize: 17, ),),
          ],
        ),
      ),
    );
  }
}
