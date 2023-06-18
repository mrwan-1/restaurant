import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:resturant/Auth/page/page_phone.dart';

import '../config.dart';

class WelcomeOne extends StatefulWidget {
  const WelcomeOne({super.key});

  @override
  State<WelcomeOne> createState() => _WelcomeOneState();
}

class _WelcomeOneState extends State<WelcomeOne> {
  var myarr = [
    {
      "title": 'ابحث عن الماكولات التي تحبها',
      "info": 'افضل الاطعمه تجدها في التطبيق ',
      "image": 'assets/icons/Catalogue-amico.svg'
    },
    {
      "title": 'قم بتحديد موقعك علئ الخريطه',
      "info": 'اختر الطعام الذي تحبه وحدد موقعك ونحن نجلبه لك ',
      "image": 'assets/icons/Take Away-pana.svg'
    },
    {
      "title": 'تتبع الطلب حتئ يصل الئ منزلك',
      "info": 'لحضات ويكون الطعام ساخن وامام منزلك',
      "image": 'assets/icons/In no time-pana.svg'
    }
  ];
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height / 3;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: myheight * 2,
              child: PageIndicatorContainer(
                shape: IndicatorShape.circle(),
                length: myarr.length,
                align: IndicatorAlign.bottom,
                indicatorColor: greyColor,
                indicatorSelectorColor: BasicColor,
                child: PageView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: myarr.length,
                  itemBuilder: (context, i) {
                    return SingleTips(
                      image: myarr[i]["image"],
                      info: myarr[i]["info"],
                      title: myarr[i]["title"],
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: size.height / 10,
            ),
           
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
                  return PagePhone();
                },), (route) => false);
              },
              child: Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: BasicColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'التسجيل بستخدام رقم الهاتف',
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleTips extends StatelessWidget {
  SingleTips({super.key, this.title, this.info, this.image});
  final String? title;
  final String? info;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
                alignment: Alignment.center, child: SvgPicture.asset(image!,height: 300,))),
        Text(
          title!,
          style: TextStyle(
              color: BasicColor, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 45),
          child: Text(
            info!,
            style: TextStyle(color: secondaryColor, fontSize: 18),
          ),
        ),
      ],
    );
  }
}
