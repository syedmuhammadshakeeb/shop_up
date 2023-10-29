import 'package:flutter/material.dart';
import 'package:shop_app/utils/components_list.dart';

class favouriteList extends StatefulWidget {

   favouriteList({super.key,});

  @override
  State<favouriteList> createState() => _favouriteListState();
}

class _favouriteListState extends State<favouriteList> {
  int value = 0;
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
