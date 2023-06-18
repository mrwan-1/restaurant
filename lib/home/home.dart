import 'package:flutter/material.dart';
import 'package:resturant/config.dart';
import 'package:resturant/drawer/drawer.dart';
import 'package:resturant/home/hider_home.dart';
import 'package:resturant/home/home_body.dart';
import 'package:resturant/home/myarr_product.dart';
import 'package:resturant/product_detail/product_detali.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../catogry/myarr_catogrts.dart';
import 'home_center.dart';

class Home extends StatefulWidget {
  static const home = 'home';
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _currentIndex = 0;
  GlobalKey<ScaffoldState> _keydrawer = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white10,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              )),
          actions: [
            IconButton(
                onPressed: () {
                  _keydrawer.currentState?.openEndDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 30,
                ))
          ],
        ),
        endDrawer: MyDrawer(),
        key: _keydrawer,
        body: SafeArea(
          child: Column(
            children: [
              Container(child: HiderHome(
                drawer: () {
                  _keydrawer.currentState?.openEndDrawer();
                },
              )),
              Container(
                child: Expanded(
                  child: ListView.builder(
                    itemCount: myarr_categorys.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return HomeCenter(
                        id: myarr_categorys[index]["id"]!,
                        image: myarr_categorys[index]["image"]!,
                        title: myarr_categorys[index]["name"]!,
                        price: myarr_categorys[index]["price"]!,
                      );
                    },
                  ),
                ),
              ),
              Container(
                child: Expanded(
                    flex: 2,
                    child: ListView.builder(
                      itemCount: myarr_product.length,
                      itemBuilder: (context, index) {
                        return HomeBody(
                          id: myarr_product[index]["id"]!,
                          image: myarr_product[index]["image"]!,
                          name: myarr_product[index]["name"]!,
                          subtitle: myarr_product[index]["suptitle"]!,
                          title: myarr_product[index]["title"]!,
                          price: myarr_product[index]["prise"]!,
                        );
                      },
                    )),
              )
            ],
          ),
        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: BasicColor,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text("Likes"),
              selectedColor: BasicColor,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: BasicColor,
            ),
          ],
        ),
      ),
    );
  }
}
