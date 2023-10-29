import 'package:flutter/material.dart';
import 'package:shop_app/utils/components_list.dart';

class SelectCategory extends StatefulWidget {
  var title;

  SelectCategory({super.key, required this.title,});

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {

  Color _containercolor = Colors.transparent;
  Color _textColor = Colors.black;


  void ColorChange (){
    setState(() {
      if(_containercolor == Colors.transparent){
        _containercolor = Colors.yellow;
        _textColor = Color(0xff616A7D);
      }else{
        _containercolor = Colors.transparent;
        _textColor = Colors.black;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListTile(
                leading: CircleAvatar(
                    backgroundColor: Color(0xffE7ECF0),
                    radius: 20,
                    child: IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 20,),)
                ),
                title: Text(widget.title,style:const TextStyle(
                  color: Color(0xff1E222B),
                  fontWeight: FontWeight.w600,
                  fontSize: 24
                ),),
                trailing: Icon(Icons.card_travel,color: Colors.black,),
              ),
          ),
         Expanded(
           child: ListView.builder(
             padding: EdgeInsets.symmetric(horizontal: 8,vertical: 30),
             shrinkWrap: true,
             scrollDirection: Axis.horizontal,
             itemCount: title().view.length,
             itemBuilder: ( context,  index) {
             return  InkWell(
               onTap: (){

                 ColorChange();
               },
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
                 child: Container(
                     height: 25,
                     decoration: BoxDecoration(
                         color: _containercolor,
                         borderRadius: BorderRadius.circular(20),
                         border: Border.all(color: Color(0xffB2BBCE),width: 1)
                     ),
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                       child: Center(child: Text(title().view[index] ,style: TextStyle(
                         color: _textColor,
                         fontSize: 20,
                         fontWeight: FontWeight.w600,
                       ),)),
                     ),
                   ),
               ),
             );
               },

           ),
         ),
          Expanded(
            flex: 6,
            child: GridView.builder(
                padding: EdgeInsets.all( 20),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20
                ),
                itemCount: 8,
                itemBuilder: (context , index){
                  return Container(
                    height:194 ,
                    width:160 ,
                    decoration: BoxDecoration(
                      color: Color(0xffF8F9FB),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(),
                        Image(image: AssetImage('assets/s1.png')),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Divider(
                            thickness: 2,

                            color: Color(0xffE0E2EE),
                          ),
                        ),
                        Spacer(),
                        Text(title().leadtitle[index],style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),),
                        Text('Organic',style: TextStyle(
                          color: Color(0xff616A7D),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        )),
                        Spacer(),
                      ],
                    ),

                  );
                }),
          )
        ],
      ),
    );
  }
}
