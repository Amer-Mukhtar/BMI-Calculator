import 'package:flutter/material.dart';
import 'constants.dart';


class NavButto extends StatelessWidget {
  NavButto({required this.ontap,required this.text});

  final VoidCallback? ontap;
  final Widget text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        color: tilecolor,
        height: 60,
        width: double.infinity,
        padding:const EdgeInsets.all(10),
        child: Center(
            child: text
        ),
      ),
    );
  }
}