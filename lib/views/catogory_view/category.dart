import 'package:flutter/material.dart';
import 'package:shop_app/utils/components_list.dart';
import 'package:shop_app/views/catogory_view/selected.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color(0xff2A4BA0),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hey, Halal',
                        style: TextStyle(
                          color: Color(0xffF8F9FB),
                          fontSize: 30.05,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.search,
                            size: 26,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.card_giftcard,
                            size: 26,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Shop',
                    style: TextStyle(
                        color: Color(0xffFAFBFD),
                        fontWeight: FontWeight.w300,
                        fontSize: 50),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "By Category",
                    style: TextStyle(
                        color: Color(0xffFAFBFD),
                        fontWeight: FontWeight.w800,
                        fontSize: 50),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.63,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: GridView.builder(
                          padding: EdgeInsets.all(20),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20),
                          itemBuilder: (context, index) {
                            return Container(
                              height: 194,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Color(0xffF8F9FB),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SelectCategory(
                                                title: title().leadtitle[index],
                                              )));
                                },
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Spacer(),
                                    Image(image: AssetImage('assets/s1.png')),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 40),
                                      child: Divider(
                                        thickness: 2,
                                        color: Color(0xffE0E2EE),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      title().leadtitle[index],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text('Organic',
                                        style: TextStyle(
                                          color: Color(0xff616A7D),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                        )),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                )),
          )
        ],
      ),
    ));
  }
}
