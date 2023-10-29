import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/utils/components_list.dart';
import 'package:shop_app/views/catogory_view/category.dart';
import 'package:shop_app/views/favorite/favourite_view.dart';
import 'package:shop_app/views/home/home_view.dart';

class BotomNavBar_widget extends StatefulWidget {
  const BotomNavBar_widget({super.key});

  @override
  State<BotomNavBar_widget> createState() => _BotomNavBar_widgetState();
}

class _BotomNavBar_widgetState extends State<BotomNavBar_widget> {
  GlobalKey newKey = GlobalKey();
  int index = 0;
  static List<Widget> selectedWidget = <Widget>[
    HomeView(),
    CategoryView(),
    favouriteList(),
    Icon(Icons.search),
  ];
  void selectedvalue(int newindex) {
    setState(() {
      index = newindex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            key: newKey,
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: Colors.black,
            color: Color(0xff2A4BA0),
            animationDuration: Duration(milliseconds: 100),
            height: 50,
            index: index,
            onTap: selectedvalue,
            items: const [
              Icon(
                Icons.home,
                size: 24,
                color: Colors.white,
              ),
              Icon(
                Icons.category,
                size: 24,
                color: Colors.white,
              ),
              Icon(
                Icons.favorite_border,
                size: 24,
                color: Colors.white,
              ),
              Icon(
                Icons.more_vert,
                size: 24,
                color: Colors.white,
              ),
            ]),
        body: Container(
          child: Center(
            child: selectedWidget.elementAt(index),
          ),
        ));
  }
}
