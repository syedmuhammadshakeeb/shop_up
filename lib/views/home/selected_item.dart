import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class SelectedItem extends StatefulWidget {
  String text;
  String text1;
  SelectedItem({super.key,required  this.text,required this.text1 });
  @override
  State<SelectedItem> createState() => _SelectedItemState();
}
class _SelectedItemState extends State<SelectedItem> {
  double newrating = 0;
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              Stack(
                children: [
                  ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xffE7ECF0),
                    radius: 20,
                    child: IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 20,),)
                  ),
                  trailing: Icon(Icons.card_travel,color: Colors.black,),
                ),
                Center(
                  child: CircleAvatar(
                    radius: 131,
                    backgroundColor:const Color(0xffE7ECF0),
                    child:Stack(
                      children: [
                        Expanded(
                          child: PageView(
                            controller: _controller,
                            children:const [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      height:68,
                                      width: 68,
                                      child: Image(image: AssetImage('assets/s1.png'))),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      height:68,
                                      width: 68,
                                      child: Image(image: AssetImage('assets/s1.png'))),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      height:68,
                                      width: 68,
                                      child: Image(image: AssetImage('assets/s1.png'))),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 50,
                          left: 90,
                          child: Container(
                            child: SmoothPageIndicator(
                              controller: _controller,
                              count: 3,
                              effect:const WormEffect(
                                activeDotColor: Colors.yellow,
                                dotColor: Colors.grey,
                                dotWidth: 19,
                                dotHeight: 5,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
                ],
              ),
                 Padding(
                   padding:  EdgeInsets.only(left: 20.0,top: 5),
                   child: Text(widget.text ,
                     textAlign: TextAlign.start,
                     style: TextStyle(
                       fontWeight: FontWeight.w700,
                       fontSize: 26,
                       color: Colors.black,
                     ),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0,right: 15,top: 10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(
                         children: [
                           const SizedBox(
                               height: 18,
                               width: 18,
                               child: Image(image: AssetImage('assets/s4.png'))),
                           // Icon(Icons.money_off,size: 24, color: Color(0xff2A4BA0),),
                           Text(widget.text1 + '/KG',style:const TextStyle(
                             color: Color(0xff2A4BA0),
                             fontSize: 20,
                             fontWeight: FontWeight.w700,
                           ),),
                         ],
                       ),
                       Container(
                         height: 24,
                         width: 84,
                         decoration: BoxDecoration(
                           color: Color(0xff2A4BA0),
                           borderRadius: BorderRadius.circular(40),
                         ),
                         child:const Center(
                           child: Text('22.04% OFF',style: TextStyle(
                             color: Colors.white,
                             fontSize: 12,
                             fontWeight: FontWeight.w400,
                           ),),
                         ),
                       ),
                       Text('Reg: 56.70 USD',style: TextStyle(
                         color: Color(0xffB2BBCE),
                         fontSize: 18,
                         fontWeight: FontWeight.w400,
                       ),)
                     ],),
                 ),
                 SizedBox(height: 5,),
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 20.0,top: 5),
                       child: RatingBar.builder(
                           initialRating: 0,
                           minRating: 1,
                           unratedColor: Colors.grey,
                           itemCount: 5,
                           itemSize: 18,
                           updateOnDrag: true,
                           itemBuilder: (context , index){
                             return Icon(Icons.star,color: Colors.amber,);
                           }, onRatingUpdate: (rating){
                         setState(() {
                           newrating = rating;
                         });
                       }),
                     ),
                     const SizedBox(width: 10,),
                     Text( 'Rating '+newrating.toString(),style:const TextStyle(
                       color: Color(0xffA1A1AB),
                       fontSize: 16,
                       fontWeight: FontWeight.w400,
                     ),)
                   ],
                 ),
                 const SizedBox(height: 10,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       height: 56,
                       width: 169,
                       decoration: BoxDecoration(
                         color: Colors.transparent,
                         borderRadius: BorderRadius.circular(40),
                         border: Border.all(color:const Color(0xff2A4BA0),width: 1),

                       ),
                       child: Center(
                         child: Text('add to card',style: TextStyle(
                           color: Color(0xff2A4BA0),
                           fontWeight: FontWeight.w600,
                           fontSize: 15,
                         ),),
                       ),
                     ),
                     SizedBox(width: 5,),
                     Container(
                       height: 56,
                       width: 169,
                       decoration: BoxDecoration(
                         color: Color(0xff2A4BA0),
                         borderRadius: BorderRadius.circular(40),
                         border: Border.all(color:const Color(0xff2A4BA0),width: 1),

                       ),
                       child: Center(
                         child: Text('Buy now ',style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.w600,
                           fontSize: 15,
                         ),),
                       ),
                     ),

                   ],
                 ),
                 const Padding(
                   padding:  EdgeInsets.only(left: 20,top: 20,right: 5),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Details',style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w400,
                         color: Color(0xff1E222B),
                       ),),
                       SizedBox(height: 10,),
                       Text('Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w400,
                         color: Color(0xff8891A5),
                       ),)
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0,right: 10),
                   child: DropdownButton(
                     value: 'Nutritional facts',
                     style: const TextStyle(
                       color: Color(0xff1E222B),
                       fontSize: 16,
                       fontWeight: FontWeight.w400,
                     ),
                     isExpanded: true,
                     menuMaxHeight: 350,
                     alignment: AlignmentDirectional.centerEnd,
                     iconSize: 35,
                     icon: Icon(Icons.keyboard_arrow_down,size: 30,),
                     dropdownColor:  Colors.white,
                     iconEnabledColor: Color(0xffB2BBCE),
                     onChanged: (value) {
                       setState(() {
                       });
                     },
                     items: const [
                       DropdownMenuItem(
                           value: 'Nutritional facts', child: Text('Nutritional facts')),
                       DropdownMenuItem(
                           value: 'Nutritional w', child: Text('Nutritional w')),
                       DropdownMenuItem(
                           value: 'Nutritional e', child: Text('Nutritional e')),
                       DropdownMenuItem(
                           value: 'Nutritional r', child: Text('Nutritional r'))
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0,right: 10),
                   child: DropdownButton(
                     value: 'Reviews',
                     style: const TextStyle(
                       color: Color(0xff1E222B),
                       fontSize: 16,
                       fontWeight: FontWeight.w400,
                     ),
                     isExpanded: true,
                     menuMaxHeight: 350,
                     alignment: AlignmentDirectional.centerEnd,
                     iconSize: 35,
                     icon: Icon(Icons.keyboard_arrow_down,size: 30,),
                     dropdownColor:  Colors.white,
                     iconEnabledColor: Color(0xffB2BBCE),
                     onChanged: (value) {
                       setState(() {
                       });
                     },
                     items: const [
                       DropdownMenuItem(
                           value: 'Reviews', child: Text('Reviews')),
                       DropdownMenuItem(
                           value: 'Nutritional w', child: Text('Nutritional w')),
                       DropdownMenuItem(
                           value: 'Nutritional e', child: Text('Nutritional e')),
                       DropdownMenuItem(
                           value: 'Nutritional r', child: Text('Nutritional r'))
                     ],
                   ),
                 )
            ],
          ),
        ),
      ),
    );
  }
}
