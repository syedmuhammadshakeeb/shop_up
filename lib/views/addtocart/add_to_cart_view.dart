import 'package:flutter/material.dart';

import '../../utils/components_list.dart';

class addToCart extends StatefulWidget {
  const addToCart({super.key});

  @override
  State<addToCart> createState() => _addToCartState();
}

class _addToCartState extends State<addToCart> {
  int value =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: Image(image: AssetImage('assets/s1.png')),
              title:Text(title().catagory.toString()),
              subtitle: Text(title().price.toString()),
              trailing: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
