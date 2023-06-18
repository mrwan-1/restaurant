import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';

import '../config.dart';

class FavoritCard extends StatelessWidget {
  const FavoritCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white38),
        height: MediaQuery.of(context).size.height / 8,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.topRight,
              width: MediaQuery.of(context).size.width / 4,
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
                  child: Icon(Icons.favorite_border_outlined,color: Colors.white,)),
            ),
            SizedBox(width: 4,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputQty(
                  showMessageLimit: false,
                  btnColor1: BasicColor,
                  btnColor2: BasicColor,
                  maxVal: 100,
                  minVal: 1,
                  isIntrinsicWidth: true,
                  borderShape: BorderShapeBtn.circle,
                  steps: 1,
                  boxDecoration: BoxDecoration(),
                  onQtyChanged: (val) {
                    print(val);
                  },
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'سلطه ارض الأخضراء نفر',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ريال1000',
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text('ريال1000',  style: TextStyle(fontSize: 18,color: Colors.grey)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
