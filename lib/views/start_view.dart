import 'package:flutter/material.dart';
import 'package:shop_app/bottom_nav_bar.dart';


import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/botton.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2A4BA0),
      body: Stack(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: const [
                SafeArea(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                        child: Center(
                          child: Text(
                            'Your holiday shopping delivered to screen',
                            style: TextStyle(
                                fontSize: 38,
                                color: Color(0xffFAFBFD),
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Text(
                              'one',
                              style: TextStyle(
                                  fontSize: 38,
                                  color: Color(0xffFAFBFD),
                                  fontWeight: FontWeight.w700),
                            ),
                            Image(image: AssetImage('assets/1.png'))
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 40),
                        child: Text(
                          'Theres something for everyone to enjoy with Sweet Shop Favourites Screen 1',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Color(0xffB2BBCE),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                SafeArea(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                        child: Center(
                          child: Text(
                            'Your holiday shopping delivered to screen',
                            style: TextStyle(
                                fontSize: 38,
                                color: Color(0xffFAFBFD),
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              'two',
                              style: TextStyle(
                                  fontSize: 38,
                                  color: Color(0xffFAFBFD),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Image(image: AssetImage('assets/1.png'))
                        ],
                      ),
                      Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 40),
                        child: Text(
                          'Theres something for everyone to enjoy with Sweet Shop Favourites Screen 2',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Color(0xffB2BBCE),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment(-0.90, -0.40),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: const WormEffect(
                  dotColor: Color(0xffB2BBCE), dotWidth: 35, dotHeight: 10),
            ),
          ),
          Positioned(
            left: 40,
            bottom: 60,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Center(
                      child: Image.asset(
                        'assets/2.png',
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: BottonScreen(
                    ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BotomNavBar_widget()));
                    },
                    title: 'Get started',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
