import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottonScreen extends StatefulWidget {
  String? title;
  VoidCallback ontap;
  BottonScreen({super.key, required this.title, required this.ontap});

  @override
  State<BottonScreen> createState() => _BottonScreenState();
}

class _BottonScreenState extends State<BottonScreen> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
            color: Color(0xffFAFBFD), borderRadius: BorderRadius.circular(40)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  widget.title!,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
