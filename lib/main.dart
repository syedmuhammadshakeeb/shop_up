import 'package:flutter/material.dart';
import 'package:shop_app/bottom_nav_bar.dart';
import 'package:shop_app/views/catogory_view/category.dart';
import 'package:shop_app/views/start_view.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
      home:const StartPage(),
    );
  }
}


