import 'package:flutter/material.dart';

class StyleCard extends StatelessWidget {
  StyleCard({super.key, required this.title, required this.price});
  String title;
  String price;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[400],
      elevation: 2,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 25),
        ),
        trailing: Text(
          price,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
