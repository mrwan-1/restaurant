import 'package:flutter/material.dart';

import '../config.dart';
import '../shoping_card/shoping_card.dart';

class ImageFoot extends StatelessWidget {
  ImageFoot({
    Key? key,
    required this.image,
  }) : super(key: key);
  String image;

  @override
  Widget build(BuildContext context) {
    double screenproduct = MediaQuery.of(context).size.height / 3.5;

    return Container(
      height: screenproduct * 2,
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
        image: DecorationImage(
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill,
            image: AssetImage(image)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 8,
                  height: MediaQuery.of(context).size.height / 17,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.navigate_before_sharp,
                        color: BasicColor,
                        size: 30,
                      )),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                      builder: (context) {
                        return ShopingCard();
                      },
                    ), (route) => false);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 17,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.shopping_bag_rounded,
                      color: BasicColor,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
