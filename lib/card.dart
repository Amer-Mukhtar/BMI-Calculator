import 'package:flutter/material.dart';

class cardd extends StatelessWidget {
  cardd({required this.color,required this.cardchild});


  final Color color;
  final Widget cardchild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      child: Container(
        height: 200,width: 400,
        margin:const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)
        ),
        child: cardchild,
      ),
    );
  }
}
