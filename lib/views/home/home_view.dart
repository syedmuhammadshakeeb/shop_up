import 'package:flutter/material.dart';
import 'package:shop_app/utils/components_list.dart';
import 'package:shop_app/views/addtocart/add_to_cart_view.dart';
import 'package:shop_app/views/favorite/favourite_view.dart';
import 'package:shop_app/views/home/selected_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> dropValue = [
    'Green Way 3000, Sylhet',
    'main Way 6000, Sylhet',
    'road Way 5000, Sylhet',
    'broad Way 4000, Sylhet'
  ];
  String newvalue = 'Green Way 3000, Sylhet';
  String val = '1 week';
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Hey, Halal',
                        style: TextStyle(
                          color: Color(0xffF8F9FB),
                          fontSize: 30.05,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        child: Stack(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              addToCart()));
                                },
                                icon: Icon(
                                  Icons.card_giftcard,
                                  color: Colors.white,
                                  size: 40,
                                )),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.yellow,
                                child: Text(title().catagory.length.toString()),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Search product or store',
                        hintStyle: const TextStyle(
                            color: Color(0xff8891A5),
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 30,
                          color: Color(0xff8891A5),
                        ),
                        fillColor: const Color(0xff153075),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide.none)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 40, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'DELIVERY TO',
                        style: TextStyle(
                          color: Color(0xffF8F9FB),
                          fontSize: 13,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text('WITHIN',
                          style: TextStyle(
                            color: Color(0xffF8F9FB),
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton(
                        value: newvalue,
                        style: const TextStyle(
                          color: Color(0xffF8F9FB),
                          fontSize: 13,
                          fontWeight: FontWeight.w800,
                        ),
                        iconSize: 35,
                        dropdownColor: const Color(0xff2A4BA0),
                        iconEnabledColor: const Color(0xffF8F9FB),
                        onChanged: (value) {
                          setState(() {
                            value = dropValue.indexed.toString();
                          });
                        },
                        items: const [
                          DropdownMenuItem(
                              value: 'Green Way 3000, Sylhet',
                              child: Text('Green Way 3000, Sylhet')),
                          DropdownMenuItem(
                              value: 'main Way 3000, Sylhet',
                              child: Text('main Way 3000, Sylhet')),
                          DropdownMenuItem(
                              value: 'road Way 3000, Sylhet',
                              child: Text('road Way 3000, Sylhet')),
                          DropdownMenuItem(
                              value: 'broad Way 3000, Sylhet',
                              child: Text('broad Way 3000, Sylhet'))
                        ],
                      ),
                      DropdownButton(
                        value: val,
                        style: const TextStyle(
                          color: Color(0xffF8F9FB),
                          fontSize: 13,
                          fontWeight: FontWeight.w800,
                        ),
                        iconSize: 35,
                        dropdownColor: const Color(0xff2A4BA0),
                        iconEnabledColor: const Color(0xffF8F9FB),
                        onChanged: (value) {
                          setState(() {
                            value = dropValue.indexed.toString();
                          });
                        },
                        items: const [
                          DropdownMenuItem(
                              value: '1 week', child: Text('1 week')),
                          DropdownMenuItem(
                              value: '1 day', child: Text('m1 day')),
                          DropdownMenuItem(
                              value: '1 hour', child: Text('1 hour')),
                          DropdownMenuItem(
                              value: '1 month', child: Text('1 month'))
                        ],
                      ),
                    ],
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
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(image: AssetImage('assets/3.png')),
                        Image(image: AssetImage('assets/6.png')),
                        Image(image: AssetImage('assets/5.png')),
                        Image(image: AssetImage('assets/4.png')),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.all(20),
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                height: 123,
                                width: 158,
                                decoration: BoxDecoration(
                                  color: const Color(0xffFFC83A),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Text(
                                              '346',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 26,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Center(
                                            child: Text('USD',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 26,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text('your money saved',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                height: 123,
                                width: 158,
                                decoration: BoxDecoration(
                                  color: const Color(0xffE4DDCB),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Text(
                                              '346',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 26,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Center(
                                            child: Text('USD',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 26,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text('your money saved',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                height: 123,
                                width: 158,
                                decoration: BoxDecoration(
                                  color: const Color(0xff2A4BA0),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Text(
                                              '346',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 26,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Center(
                                            child: Text('USD',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 26,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text('your money saved',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'Deals on Fruits & Tea',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
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
                            itemCount: title().mainTitle.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SelectedItem(
                                                text: title().subTitle[index],
                                                text1: title().mainTitle[index],
                                              )));
                                },
                                child: Container(
                                  height: 194,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Color(0xffF8F9FB),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Image(
                                          image: AssetImage('assets/s1.png')),
                                      Padding(
                                        padding: EdgeInsets.only(left: 100),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              title().catagory.add(title().leadtitle.toString());
                                              title().price.add(title().mainTitle.toString());
                                            });
                                          },
                                          child: CircleAvatar(
                                            backgroundColor: Color(0xff2A4BA0),
                                            radius: 14,
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                                height: 20,
                                                child: Image(
                                                    image: AssetImage(
                                                        'assets/s3.jpg'))),
                                            Text(
                                              title().mainTitle[index],
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(title().subTitle[index],
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xff616A7D),
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
