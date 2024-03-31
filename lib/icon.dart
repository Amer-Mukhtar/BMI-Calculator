import 'package:flutter/material.dart';



class roundicon extends StatelessWidget {
  roundicon({required this.icon,this.onressed});
  final IconData icon;
  final VoidCallback? onressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed:onressed,
      elevation: 0,
      constraints:const BoxConstraints.tightFor(width: 56,height: 56),
      shape:const CircleBorder(),
      fillColor: Colors.white,
      child:Icon(icon),
    );
  }
}