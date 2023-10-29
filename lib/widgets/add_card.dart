import 'package:flutter/material.dart';

class AddCard_ extends StatefulWidget {


   AddCard_({super.key});

  @override
  State<AddCard_> createState() => _AddCard_State();
}

class _AddCard_State extends State<AddCard_> {
  String title= '';
  VoidCallback? ontap;
 final Color color = Color as Color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 56,
        width: 169,
        decoration: BoxDecoration(
          color:color ,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color:const Color(0xff2A4BA0)),
        ),
        child: Center(
          child: Text(title,style: TextStyle(
            color: color,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),),
        ),
      ),
    );
  }
}
